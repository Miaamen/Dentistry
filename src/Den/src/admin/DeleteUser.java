package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.db;

/**
 * Servlet implementation class DelUser
 */
@WebServlet("/allJsp/deleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id5 = request.getParameter("onc");
		String delSql5 = "update signupuser set isDelete='true' where id = ?";
		Object[] paramsDelDoc5 = {id5};
		int execute5 = db.execute(delSql5, paramsDelDoc5);
		
		request.setAttribute("title", "删除成功");
		request.setAttribute("info", "跳转至用户列表页");
		request.setAttribute("urlpath", "allJsp/user");
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
