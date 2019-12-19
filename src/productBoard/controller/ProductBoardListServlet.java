package productBoard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import productBoard.model.service.ProductBoardService;
import productBoard.model.vo.ProductBoard;

/**
 * Servlet implementation class ProductBoardListServlet
 */
@WebServlet("/ProductBoardListServlet")
public class ProductBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductBoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductBoardService pService = new ProductBoardService();
		int listCount = pService.getListCount();
		
		int currentPage; // 현재 페이지
		int pageLimit;  // 한 페이징 하단에 보여질 페이지 수
		int maxPage; //전체 페이지 에서 가장 마지막 페이지 
		int startPage; //한 페이지 하단에 보여질 시작 페이지
		int endPage; //한 페이지 하단에 보여질 끝 페이지
		
		int boardLimit=9; // 한 페이지 보여질 최대 게시글 수 
		
		currentPage= 1;
		
		//하지만 페이지 전환시 전달 받은 현재 페이지가 있을시 해당 페이지를 currentPage로 적용
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		// *pageLimit : 한 페이지 하단에 보여질 페이지 수 
		pageLimit= 5 ; 
		
		maxPage = (int)Math.ceil(((double)listCount/ boardLimit));
		
		startPage = (currentPage -1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit -1;
		
		// 하지만 마지막 페이지 수가 총 페이지 수 보다 클 경우
		// 만약 maxPage가 13 인데 endPage가 20일 수는 없다 .
		if(maxPage < endPage) {
			endPage=maxPage;
		}
		
		//PageInfo pi = new PageInfo(currentPage , listCount , pageLimit ,maxPage, startPage,endPage, boardLimit);
		
		
		ArrayList<ProductBoard> plist = new ProductBoardService().selectList(currentPage , boardLimit);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
