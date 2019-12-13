package  projectDiagram.myPage.controller.userInfo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import  projectDiagram.member.model.service.UserService;
import  projectDiagram.member.model.vo.User;
import  projectDiagram.myPage.model.service.myPageService;

/**
 * Servlet implementation class DeleteMemberServlet
 */
@WebServlet("/delete.me")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User u = (User)request.getSession().getAttribute("loginUser");
		
		int result = new myPageService().deleteUser(u.getUserId());
		
		if(result > 0) {
			HttpSession session = request.getSession();
			
			session.removeAttribute("loginUser"); // 로그인 세션 정보 삭제
			
			session.setAttribute("msg", "회원 탈퇴가 완료되었습니다. 복구 관련 사항은 관리자에게 문의하세요.");
			response.sendRedirect(request.getContextPath());
			
		}else {
			request.setAttribute("msg", "회원 탈퇴에 실패하였습니다.");
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
