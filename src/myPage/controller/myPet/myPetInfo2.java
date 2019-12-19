package myPage.controller.myPet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petsitter.model.service.PetInfoService;
import petsitter.model.vo.Pet;
import user.model.vo.User;

/**
 * Servlet implementation class myPetInfo2
 */
@WebServlet("/myPetInfo2")
public class myPetInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myPetInfo2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dogNum = Integer.parseInt(request.getParameter("dogNum"));
		System.out.println(dogNum+"ㅡㅡㅅㅂ");
		Pet selectPet = new PetInfoService().selectPet2(dogNum);
		System.out.println(selectPet);
		
		//리스트도뽑아와야함..
		HttpSession session = request.getSession();
		int userNo = ((User) session.getAttribute("loginUser")).getUserNo();
		ArrayList<Pet> list = new PetInfoService().selectList(userNo);

		request.setAttribute("list", list);
		request.setAttribute("selectPet", selectPet);
		
		
		request.getRequestDispatcher("views/myPage/petSitter/myPetInfo4.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
