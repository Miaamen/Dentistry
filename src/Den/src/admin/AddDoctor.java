package admin;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import database.db;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/allJsp/addDoctor")
@MultipartConfig
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/allJsp/addDoctor.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//添加医生到数据库
		String docName = request.getParameter("docName");
		String docSex= request.getParameter("docSex");
		String docAge = request.getParameter("docAge");
		String docMessage = request.getParameter("docMessage");
		//判断是否已存用户名
		String sqlDoc = "select id from doctor where name = ?";
		Object[] paramsAddDoctor = {docName};
		ArrayList<HashMap<String, Object>> queryResultDoc = db.query(sqlDoc, paramsAddDoctor);
		if(queryResultDoc.size()==0 && docName != null) {
		//将用户名和密码存入数据库
			HashMap<String, Object> docList = new HashMap<>();
			docList.put("name", docName);
			docList.put("sex", docSex);
			docList.put("age", docAge);
			docList.put("message", docMessage);
			db.insertObj("doctor", docList);
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			System.out.print("success");
			request.setAttribute("title", "添加成功");
			request.setAttribute("info", "跳转至用户列表页");
			request.setAttribute("urlpath", "allJsp/addUser");
			request.getRequestDispatcher("/page/info.jsp").forward(request, response);
		}else {
			System.out.print("Nosuccess");
			request.setAttribute("title", "添加成功");
			request.setAttribute("info", "跳转至用户列表页");
			request.setAttribute("urlpath", "allJsp/addDoctor");
			request.getRequestDispatcher("/page/info.jsp").forward(request, response);
		}
	}

}
