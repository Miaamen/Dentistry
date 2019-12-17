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
@WebServlet("/allJsp/Deal")
public class Deal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String strSql = "select * from appoint where isDeal = 'true' and isDelete is null order by orderNumber DESC";
		//Object[] params = {num};
		ArrayList<HashMap<String, Object>> appointList = db.query(strSql);
		request.setAttribute("appointList", appointList);
		//request.getRequestDispatcher("/allJsp/Deal.jsp").forward(request, response);
		
		String search2 = request.getParameter("searchName");
		String searchContent2 = "%" + search2 + "%";
		System.out.print(search2);
		String searchSql2 = "select * from appoint where name like ?";
		Object[] param2 = {searchContent2};
		ArrayList<HashMap<String,Object>> result2 = db.query(searchSql2,param2);
		if(result2.size()==0) {
			System.out.println("ËÑË÷²»ÄÜÎª¿Õ");
			request.getRequestDispatcher("Deal.jsp").forward(request, response);
		}else {
			request.setAttribute("appointList",result2);
			request.getRequestDispatcher("/allJsp/searchDeal.jsp").forward(request, response);
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