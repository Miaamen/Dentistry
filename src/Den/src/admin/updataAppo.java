package admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.db;

/**
 * Servlet implementation class DelUser
 */
@WebServlet("/allJsp/updataAppo")
public class updataAppo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updataAppo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//处理appoint
		String id1 = request.getParameter("ona");
		String delSql1 = "update appoint set isDeal='true' where orderNumber = ?";
		Object[] paramsDelDoc1 = {id1};
		int execute1 = db.execute(delSql1, paramsDelDoc1);
		
		request.setAttribute("title", "处理成功");
		request.setAttribute("info", "跳转至列表页");
		request.setAttribute("urlpath", "allJsp/NoDeal");
		request.getRequestDispatcher("/page/info.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
