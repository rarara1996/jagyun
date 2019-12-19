package myPage.controller.myPet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petsitter.model.service.PetInfoService;
import user.model.vo.User;

/**
 * Servlet implementation class myPetDeleteServlet
 */
@WebServlet("/myPetDeleteServlet")
public class myPetDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myPetDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dogNum = Integer.parseInt(request.getParameter("dogNum"));		
		int result = new PetInfoService().deletePet(dogNum);
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		if(result > 0) {
			User user = ((User) session.getAttribute("loginUser"));
			User updateDogsu = new PetInfoService().updateDogSu2(user);
			
			request.getSession().setAttribute("loginUser", updateDogsu);

			response.sendRedirect("myPetListServlet");
		} else {

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
