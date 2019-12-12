package projectDiagram.productBoard.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectDiagram.productBoard.model.service.ProductBoardService;

/**
 * Servlet implementation class ProductBoardDeleteServlet
 */
@WebServlet("/ProductBoardDeleteServlet")
public class ProductBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductBoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productNo=Integer.parseInt(request.getParameter("productNo"));
		int result =new ProductBoardService().deleteProductBoard(productNo);
		
		if(result > 0) {
			request.setAttribute("productNo", productNo);
			request.getRequestDispatcher("?????").forward(request, response);
		} else {
			request.getRequestDispatcher("?????").forward(request, response);
			request.setAttribute("msg", "게시글 삭제에 실패했습니다.");
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
