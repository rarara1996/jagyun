package petsitter.controller.psboard;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.model.vo.IMG;
import petsitter.model.service.PetSitterInfoService;
import petsitter.model.service.PsBoardInfoService;
import petsitter.model.vo.PsBoard;
import petsitter.model.vo.PsInfoDetail;

/**
 * Servlet implementation class SelectPsBoardListDetail
 */
@WebServlet("/SelectPsBoardListDetail")
public class SelectPsBoardListDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectPsBoardListDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int psBoardNo = Integer.parseInt(request.getParameter("psb"));
		System.out.println(psBoardNo);
		PsBoard psBoard = new PsBoardInfoService().selectPsBoard(psBoardNo);
		
		if(psBoard == null) {
			System.out.println("펫시터 글 로드 실패");
			request.setAttribute("msg", "펫시터 글 로드 실패!!");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
		}else {
			System.out.println("펫시터 글 로드 성공");
			int psNo = psBoard.getPsNo();
			PsInfoDetail pid = new PsBoardInfoService().selectPsInfoDetail(psNo);
			
			ArrayList<IMG> iList = new PsBoardInfoService().selectBoardImg(psBoardNo);
			
			if(pid == null || iList.isEmpty()) {
				System.out.println("펫시터 정보 로드 실패");
				request.setAttribute("msg", "펫시터 정보 로드 실패!!");
				RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
				view.forward(request, response);
			}else {
				//펫시터 글 로드해오고 그 글을 쓴 사람의 정보와 사진을 가져오기 위해서
				System.out.println(psBoard);
				System.out.println(pid);
				for(IMG img : iList) {
					System.out.println(img);
				}
				request.setAttribute("psBoard", psBoard);
				request.setAttribute("pid", pid);
				request.setAttribute("iList", iList);
				request.getRequestDispatcher("views/petsitter/PsDetail.jsp").forward(request, response);
			}
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
