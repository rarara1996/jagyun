package myPage.controller.petSitter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPage.model.service.mpPetsitterSerivce;
import petsitter.model.vo.PsInfo;
import user.model.service.UserService;

/**
 * Servlet implementation class PetsitterSchedule
 */
@WebServlet("/PetsitterSchedule")
public class PetsitterSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetsitterSchedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int psNo = Integer.parseInt(request.getParameter("psNo"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		//for문돌릴 숫자 뽑아오기
		int num = Integer.parseInt(request.getParameter("num"));
		
		Calendar cToday = Calendar.getInstance();

		int month = cToday.get(Calendar.MONTH) + 1;
		
		ArrayList<String> SchDate=new ArrayList<>();
		for(int i=0;i<num;i++) {
			if(i==(num-1)) {
				SchDate.add(month+request.getParameter("a"+i));
			}else {
				SchDate.add(month+request.getParameter("a"+i)+",");
			}
		}
		String SceduleDate="";
		for(int i=0; i<SchDate.size();i++) {
			SceduleDate=SceduleDate+(SchDate.get(i));
		}
		System.out.println("-----------------");
		System.out.println(SceduleDate);
		System.out.println("----------------");
		
		PsInfo psInfo = new mpPetsitterSerivce().insertSch(psNo,userNo,SceduleDate);
		
		System.out.println("스케줄등록완료");
		response.sendRedirect("PetsitterSelect");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
