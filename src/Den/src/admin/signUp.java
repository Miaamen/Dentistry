package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.ResultSet; 
import java.sql.Statement; 
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.db;

@WebServlet("/allJsp/signUp")
public class signUp extends HttpServlet {
		private static final long serialVersionUID = 1L;
	    
	    /**
	     * @see HttpServlet#HttpServlet()
	     */

	    public signUp() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//response.getWriter().append("Served at: ").append(request.getContextPath());
			//servlet����ҳ����ʾ��һ�������ݵĴ���
			request.getRequestDispatcher("/allJsp/signUp.jsp").forward(request, response);
		}
	
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//doGet(request, response);
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			//��ȡ�û���������
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String identy = request.getParameter("identy");
			System.out.println(identy);
			//�ж��Ƿ��Ѵ��û���
			String sql = "select id from signupuser where name = ?";
			Object[] params = {name};
			ArrayList<HashMap<String, Object>> queryResult = db.query(sql, params);
			if(queryResult.size()==0) {
				//���û���������������ݿ�
				HashMap<String, Object> user = new HashMap<>();
				user.put("name", name);
				user.put("password", password);
				user.put("isAdmin", identy);
				db.insertObj("signupuser", user);
				out.print("<script language='javascript'>alert('ע��ɹ���');window.location.href='login.jsp';</script> ");
				out.flush();
				out.close();	
				System.out.print("success");
			}else if(name == "" || password == "") {
				out.print("<script language='javascript'>alert('�˺����벻��Ϊ�գ�');window.location.href='signUp.jsp';</script> ");
				out.flush();
				out.close();
			}else {
				out.print("<script language='javascript'>alert('�Ѵ����˺�');window.location.href='login.jsp';</script> ");
				out.flush();
				out.close();
				System.out.print("Nosuccess");
			}
			
		}
		
}


