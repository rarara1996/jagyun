package projectDiagram.productBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectDiagram.productBoard.model.service.ProductBoardService;
import projectDiagram.productBoard.model.vo.ProductBoard;

/**
 * Servlet implementation class ProductBoardInsertServlet
 */
@WebServlet("/ProductBoardInsertServlet")
public class ProductBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductBoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		ProductBoard pd = new ProductBoard();
		
		
		int result =new ProductBoardService().insertProductBoard(pd);
		
		if(result > 0) {
			request.setAttribute("msg", "게시글 작성 완료");
			response.sendRedirect("????");
		}else {
			request.setAttribute("msg", "게시글 작성 실패");
			request.getRequestDispatcher("????").forward(request, response);		
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
