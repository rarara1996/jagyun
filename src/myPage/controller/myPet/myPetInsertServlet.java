package myPage.controller.myPet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petsitter.model.service.PetInfoService;
import petsitter.model.vo.Pet;
import user.model.service.UserService;
import user.model.vo.User;

/**
 * Servlet implementation class myPetInsertServlet
 */
@WebServlet("/myPetInsertServlet")
public class myPetInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myPetInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		

		String dogName = request.getParameter("dogName");
		String gender = request.getParameter("gender");
/*		String gender="";
		if(gender1.equals("M")) {
			gender="M";
		}else{
			gender="F";
		};
		*/
		String size = request.getParameter("size");
/*		String size="";
		if(size1.equals("S")) {
			size="S";
		}else if(size1.equals("M")){
			size="M";
		}else if(size1.equals("L")) {
			size="L";
		};		
		*/
		String neutralize = request.getParameter("neutralize");
/*		String neutralize="";
		if(neutralize.equals("Y")) {
			
		}*/
		String vaccination = request.getParameter("vaccination");
		int age = Integer.parseInt(request.getParameter("age"));
		String toiletTrain = request.getParameter("toiletTrain");
		int userNo = ((User) session.getAttribute("loginUser")).getUserNo();
		
		User user = ((User) session.getAttribute("loginUser"));
		Pet pet = new Pet(dogName,gender,size,neutralize,vaccination,age,toiletTrain,userNo);
		int result = new PetInfoService().insertPet(pet);
		
		if(result > 0) {
			User updateDogsu = new PetInfoService().updateDogSu(user);
			System.out.println(updateDogsu);
			
			/*//세션에 유저 넣기....
			request.getSession().setAttribute("loginUser", updateDogsu);
			//세션에 펫 넣기......
			Pet updatePet = new PetInfoService().selectPet(pet.getUserNo());
			System.out.println("ㅋㅋㅋㅋ ㅡㅡ");
			request.getSession().setAttribute("petInfo", updatePet);
			System.out.println(updatePet);
			request.getSession().setAttribute("msg", "등록완료");
			response.sendRedirect("views/myPage/petSitter/myPetInfo4.jsp");
			*/
			ArrayList<Pet> list = new PetInfoService().selectList(userNo);

			request.setAttribute("list", list);
			request.getSession().setAttribute("loginUser", updateDogsu);
			request.getRequestDispatcher("views/myPage/petSitter/myPetInfo4.jsp").forward(request, response);
			
		}
		// 실패시 "회원 가입 실패!!" 메세지 가지고 errorPage.jsp로
		else {
			request.setAttribute("msg", "실패!!");
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
