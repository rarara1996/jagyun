package  projectDiagram.myPage.controller.userInfo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import  projectDiagram.member.model.vo.User;
import  projectDiagram.myPage.model.service.myPageService;


/**
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/update.me")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 넘어오는 값들 중에 변경될 값만 뽑아내기
		String id = request.getParameter("id");

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		int dogCount = Integer.parseInt(request.getParameter("dogCount"));
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");

		User u = new User(id,name,email,address,dogCount,phone,birth);
		
		User updateMember = new myPageService().updateUser(u);
		
		if(updateMember != null) {
			request.getSession().setAttribute("msg", "성공적으로 회원정보를 수정했습니다.");
			request.getSession().setAttribute("loginUser", updateMember);
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("msg", "회원정보 수정에 실패했습니다.");
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
