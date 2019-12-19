package myPage.controller.petSitter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.model.service.mpPetsitterSerivce;
import petsitter.model.service.PetSitterInfoService;
import petsitter.model.vo.PsInfo;
import petsitter.model.vo.PsSchedule;
import user.model.vo.User;

//펫시터페이지 들어갔을때
/**
 * Servlet implementation class PetsitterSelect
 */
@WebServlet("/PetsitterSelect")
public class PetsitterSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetsitterSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int userNo = ((User) session.getAttribute("loginUser")).getUserNo();
		
		//<펫시터정보 갔다오기>
		PsInfo ps = new mpPetsitterSerivce().checkUser(userNo);
		
		//<펫시터스케줄정보 갔다오자>
		PsSchedule sch = new mpPetsitterSerivce().selectSch(userNo);
		
		System.out.println("펫시터정보:"+ps);
		request.setAttribute("PsInfo", ps);
		System.out.println("펫시터 스케줄정보"+sch);
		request.setAttribute("SchInfo", sch);
		
		
		request.getRequestDispatcher("views/myPage/petSitter/petSitterPage1.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
