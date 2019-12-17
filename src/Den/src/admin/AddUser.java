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
@WebServlet("/allJsp/addUser")
@MultipartConfig
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/allJsp/addUser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//����û������ݿ�
		String appointName = request.getParameter("appointName");
		String appointPassword= request.getParameter("appointPassword");
		String appointIsAdimin = request.getParameter("appointIsAdimin");
		//�ж��Ƿ��Ѵ��û���
		String sql = "select id from signupuser where name = ?";
		Object[] paramsAppoint = {appointName};
		ArrayList<HashMap<String, Object>> queryResult = db.query(sql, paramsAppoint);
		if(queryResult.size()==0 && appointName != null) {
			//���û���������������ݿ�
			HashMap<String, Object> user = new HashMap<>();
			user.put("name", appointName);
			user.put("password", appointPassword);
			user.put("isAdmin", appointIsAdimin);
			db.insertObj("signupuser", user);
			System.out.print("success");
			request.setAttribute("title", "��ӳɹ�");
			request.setAttribute("info", "��ת���û��б�ҳ");
			request.setAttribute("urlpath", "allJsp/addUser");
			request.getRequestDispatcher("/page/info.jsp").forward(request, response);
		}else {
			System.out.print("Nosuccess");
			request.setAttribute("title", "��ӳɹ�");
			request.setAttribute("info", "��ת���û��б�ҳ");
			request.setAttribute("urlpath", "allJsp/addUser");
			request.getRequestDispatcher("/page/info.jsp").forward(request, response);
		}
	}

}
