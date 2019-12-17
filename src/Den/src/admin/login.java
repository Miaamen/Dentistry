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
import javax.servlet.http.HttpSession;

import database.db;

@WebServlet("/allJsp/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/allJsp/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		
		//��ȡ�˺ź�����
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String identy = request.getParameter("identy");
		//�����ݿ�Ա��˺ź������Ƿ���ȷ��
		String strSql = "select * from signupuser where name=? and password =? and isAdmin =? and isDelete is null";
		Object[] params = {name,password,identy};
		ArrayList<HashMap<String, Object>> queryArr = db.query(strSql,params);
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		if(queryArr.size()==0) {
			System.out.println("�˺Ż��������");
			out.print("<script language='javascript'>alert('�˺Ż��������,�����µ�½')  ;window.location.href='login.jsp';</script> ");
			out.flush();
			out.close();
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(name == "" || password == "") {
			out.print("<script language='javascript'>alert('�˺����벻��Ϊ�գ�');window.location.href='signUp.jsp';</script> ");
			out.flush();
			out.close();
		}else {
			String ff = identy.trim();
			System.out.println("��¼�ɹ�" + ff);
			if(ff.equals("false")) {
				request.getRequestDispatcher("appoint.jsp").forward(request,response);	
			}else{
				request.getRequestDispatcher("adminMain.jsp").forward(request, response);
			}
		}
		
	}

}