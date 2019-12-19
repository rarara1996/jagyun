package admin.Petsitter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.Petsitter.model.service.AdminPetsitterService;
import admin.user.model.service.adminUserService;

/**
 * Servlet implementation class adUpdatePetsitterRequestServlet
 */
@WebServlet("/adUpdatePetsitterRequestServlet")
public class adUpdatePetsitterRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adUpdatePetsitterRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String irr[] = request.getParameterValues("bId");
		String status = request.getParameter("status");
		System.out.println(irr.length);
		int result = new AdminPetsitterService().adUpdatePetsitterRequest(irr,status);
		System.out.println(result+"???");
		if (result>=1) {
			request.getSession().setAttribute("msg1", "펫시터 정보를 수정했습니다.");
			System.out.println("펫시타");
			System.out.println("악");
			response.sendRedirect("adpetSitterRequestServlet");
		} else {
			request.setAttribute("msg", "펫ㅅ시터 정보 수정에 실패했습니다.");
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
