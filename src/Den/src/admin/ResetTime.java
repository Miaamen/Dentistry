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
@WebServlet("/allJsp/resetTime")
public class ResetTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetTime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//删除appoint
		String id3 = request.getParameter("onb");
		String delSql3 = "update doctortime set monup=0,mondown=0,tuesup=0,tuesdown=0,wedup=0,weddown=0,thurup=0,thurdown=0,friup=0,fridown=0,satup=0,satdown=0,sunup=0,sundown=0 where id = ?";
		Object[] paramsDelDoc3 = {id3};
		int execute3 = db.execute(delSql3, paramsDelDoc3);
		
		request.setAttribute("title", "重置成功");
		request.setAttribute("info", "跳转至列表页");
		request.setAttribute("urlpath", "allJsp/appointTime");
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

