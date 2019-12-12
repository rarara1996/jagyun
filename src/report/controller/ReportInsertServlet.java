package  projectDiagram.report.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import  projectDiagram.member.model.vo.User;
import projectDiagram.report.model.service.ReportService;
import  projectDiagram.report.model.vo.Report;

/**
 * Servlet implementation class ReportInsertServlet
 */
@WebServlet("/ReportInsertServlet")
public class ReportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		int reportNo = Integer.parseInt(request.getParameter("reportNo"));
		
		int buyNo = Integer.parseInt(request.getParameter("buyNo"));
		String reason = request.getParameter("reason");
		int category = Integer.parseInt(request.getParameter("category"));
		String writer =  ((User)session.getAttribute("loginUser")).getUserId();
		Report n = new Report(reportNo, buyNo, reason,category);
		
		int result = new ReportService().insertReport(n,writer);
		
		if(result > 0) {
			// 새로 갱신된 list를 불러오는 Servlet을 실행해야되기 때문에 다음과 같이 작업하자!!
			
			request.getSession().setAttribute("msg", "공지사항이 성공적으로 등록되었습니다.");
			response.sendRedirect("list.no");
		}else {
			request.setAttribute("msg", "공지사항 등록 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
