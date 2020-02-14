package DB;

import java.sql.*;

public class databases {

	public static Connection getCon() throws SQLException{
		Connection con = null;
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gold","root","mirim2");
			System.out.println("DB연동 완료");
			return con;
		}catch(ClassNotFoundException ce) {
			System.out.println("안됨");
			return null;
		}
	}
	

}
