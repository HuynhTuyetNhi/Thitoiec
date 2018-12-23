package DB;

import java.sql.*;

public class DBConnection {

	public static Connection CreateConnection()
	{
		Connection conn =null;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
	       String connectionURL = "jdbc:mysql://localhost:3306/webthitoeic?useUnicode=true&characterEncoding=UTF-8";//tên cơ sở dữ liệu
	      conn = DriverManager.getConnection(connectionURL,"root","1234");//tên và mật khẩu khi đăng nhập mysql
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return conn;
		
	}
	
}
