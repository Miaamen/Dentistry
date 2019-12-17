package database;

import java.sql.*;


public class linkDataBase {
    
    static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection con() {
		Connection connection = null;
		String username = "root";
		String password = "123456";
		String database = "dentist";
		String url = "jdbc:mysql://localhost:3306/dentist?&useUnicode=true&serverTimezone=UTC&characterEncoding=UTF-8&useSSL=false";
		try {
			connection = DriverManager.getConnection(url,username,password);
			System.out.print("数据库连接成功");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print("数据库连接不成功");
			// TODO: handle exception
		}
		return connection;
		
	}
	public static void close(Connection conn) {
		if(conn!=null) {
			try {
				conn.close();
				System.out.print("close ok");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print("close no");
			}
		}
	}
	public static void main(String[] args) {
		con();
	}
    
}
