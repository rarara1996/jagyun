package  projectDiagram.myPage.controller.market;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import  projectDiagram.myPage.model.service.mpMarketService;
import  projectDiagram.myPage.model.vo.Market;


/**
 * Servlet implementation class marketDetailServlet
 */
@WebServlet("/marketDetailServlet")
public class mpMarketDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mpMarketDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int nno = Integer.parseInt(request.getParameter("nno"));
		
		ArrayList<Market> list = new mpMarketService().selectList();
		
		String page = "";
		if(list != null) {
			request.setAttribute("notice", list);
			page = "views/notice/noticeDetailView.jsp";
		}else {
			request.setAttribute("msg", "w조회 실패");
			page = "views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
