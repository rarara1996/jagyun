package admin.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.user.model.service.adminUserService;

/**
 * Servlet implementation class updateUserServlet
 */
@WebServlet("/updateUserServlet")
public class adUpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adUpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("옴?");
		request.setCharacterEncoding("UTF-8");

		String irr[] = request.getParameterValues("bId");
		String status = request.getParameter("status");
		
		int result = new adminUserService().adupdateUser(irr,status);
		System.out.println("??");
		if (result>=1) {
			request.getSession().setAttribute("msg", "회원정보를 수정했습니다.");
			System.out.println("뭐");
			response.sendRedirect("adminUserServlet");
			System.out.println("엥");
		} else {
			request.setAttribute("msg", "회원정보 수정에 실패했습니다.");
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
