package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.db;

@WebServlet("/allJsp/appoint")
public class appoint extends HttpServlet {
		private static final long serialVersionUID = 1L;
	    
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public appoint() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//response.getWriter().append("Served at: ").append(request.getContextPath());
			//servlet不做页面显示，一般做数据的处理
			request.getRequestDispatcher("/allJsp/appoint.jsp").forward(request, response);
		}
	
		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//doGet(request, response);
			//获取预约信息
			String name = request.getParameter("name");
			String telephone = request.getParameter("telephone");
			String time = request.getParameter("time");
			String doctor = request.getParameter("doctor");
			//将用户名和密码存入数据库
			HashMap<String, Object> appoint = new HashMap<>();
			appoint.put("name", name);
			appoint.put("telephone", telephone);
			appoint.put("appointTime", time);
			appoint.put("appointDoctor", doctor);
			db.insertObj("appoint", appoint);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			
			
			//更改doctime的预约次数
			String DocTimeNum = "select " + time +" from doctortime where doctor = " + '\"' + doctor + '\"';
			HashMap<String, Object> docTimeNum = new HashMap<>();
			ArrayList<HashMap<String, Object>> doctimenum = db.query(DocTimeNum); 
			Object num = doctimenum.get(0);
			String num1 = num + "";
			String str2="";
			if(num1 != null && !"".equals(num1)){
				for(int i=0;i<num1.length();i++){
					if(num1.charAt(i)>=48 && num1.charAt(i)<=57){
						str2+=num1.charAt(i);
					}
				}
			}
			//System.out.print("asfadsdadadsadadada:" + str2);
			int timeNum = Integer.parseInt(str2);
			String sql = "update doctortime set " + time + " = " + (timeNum + 1) + " where doctor = " +'\"' + doctor + '\"';
			db.execute(sql);
			
			out.print("<script language='javascript'>alert('预约成功！');</script>");
			System.out.print("success");
		}
		
}


