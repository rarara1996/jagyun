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
 * Servlet implementation class ProductBoardDetailServlet
 */
@WebServlet("/ProductBoardDetailServlet")
public class ProductBoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductBoardDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		
		ProductBoard pb =new ProductBoardService().selectProductBoard(productNo);
		
		//ArrayList<Reply> rlist = new ProductBoardService().selectReplyList(productNo);
		
		if(pb != null) {
			request.setAttribute("ProductBoard", pb);
			// ajax 이후
			//request.setAttribute("rlist", rlist); 댓글
			request.getRequestDispatcher("????.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "게시판 상세조회에 실패하였습니다.");
			request.getRequestDispatcher("???.jsp").forward(request, response);
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
