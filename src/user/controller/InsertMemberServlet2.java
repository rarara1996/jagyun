package user.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class InsertMemberServlet
 */
@WebServlet(name="InsertMemberServlet2", urlPatterns="/InsertMemberServlet2")
public class InsertMemberServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 한글이 있을 경우 인코딩 처리
		request.setCharacterEncoding("UTF-8");
		// 2. request에 담겨있는 값들 꺼내서 변수에 저장 및 객체 생성
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String gender1 = request.getParameter("gender");
		String gender="";
		if(gender1.equals("man")) {
			gender="M";
		}else{
			gender="F";
		};
		
		String email = request.getParameter("email");
		
		String postCode=request.getParameter("addr");
		//도로명주소
		String doro=request.getParameter("addr1");
		//상세주소
		String detail=request.getParameter("addr2");
		
		String address = postCode+","+doro+","+detail;
		
		String phone1=request.getParameter("phone1")+",";
		String phone2=request.getParameter("phone2")+",";
		String phone3=request.getParameter("phone3");
				
		String phone=phone1+phone2+phone3;
		
		int dogCount = 0;
		String birth = request.getParameter("birth");

		User mem = new User(userId, userPwd, userName, gender, email, address, dogCount,phone,birth);

		// 3. 비즈니스 로직을 수행할 서비스 메소드 전달하고 결과 값 받기
		int result = new UserService().insertUser(mem);
		
		// 4. 결과 값에 따라 성공 / 실패 페이지로 이동
		
		// 성공 시 메인 페이지로
		
		if(result > 0) {
			// menubar.jsp에서 alert창 출력하도록 설정
			request.getSession().setAttribute("msg", "회원 가입 성공! 반려견 등록은 마이페이지에서 해주세요 ^__^");
			response.sendRedirect("views/common/main.jsp");

		}
		// 실패시 "회원 가입 실패!!" 메세지 가지고 errorPage.jsp로
		else {
			request.setAttribute("msg", "회원 가입 실패!!");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
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
