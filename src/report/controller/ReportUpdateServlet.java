package  projectDiagram.report.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import  projectDiagram.report.model.service.ReportService;
import  projectDiagram.report.model.vo.Report;

/**
 * Servlet implementation class ReportUpdateServlet
 */
@WebServlet("/ReportUpdateServlet")
public class ReportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");


		int reportNo = Integer.parseInt(request.getParameter("reportNo"));
		String reason = request.getParameter("reason");
		
		Report r = new Report();
		r.setReportNo(reportNo);
		r.setReason(reason);
		
		int result = new ReportService().updateReport(r);
		
		if(result > 0) {
			response.sendRedirect("detail.no?nno="+reportNo);
			
		}else {
			request.setAttribute("msg", "공지사항 수정에 실패했습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
