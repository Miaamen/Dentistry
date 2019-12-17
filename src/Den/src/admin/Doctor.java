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

@WebServlet("/allJsp/doctor")
public class Doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//获取数据--doctor
		String strSqlDoctor = "select * from doctor where isDelete is null order by id DESC";
		//Object[] paramsDoctor = {num};
		ArrayList<HashMap<String, Object>> DoctorList = db.query(strSqlDoctor);
		request.setAttribute("DoctorList", DoctorList);
		//request.getRequestDispatcher("/allJsp/doctor.jsp").forward(request, response);
		
		String search1 = request.getParameter("searchName");
		String searchContent = "%" + search1 + "%";
		System.out.print(search1);
		String searchSql = "select * from doctor where name like ?";
		Object[] param = {searchContent};
		ArrayList<HashMap<String,Object>> result = db.query(searchSql,param);
		if(result.size()==0) {
			System.out.println("搜索不能为空");
			request.getRequestDispatcher("doctor.jsp").forward(request, response);
		}else {
			request.setAttribute("DoctorList",result);
			request.getRequestDispatcher("/allJsp/searchDoc.jsp").forward(request, response);
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
