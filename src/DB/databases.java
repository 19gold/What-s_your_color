package DB;

import java.sql.*;

public class databases {

	public static Connection getCon() throws SQLException{
		Connection con = null;
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gold","root","mirim2");
			System.out.println("DB���� �Ϸ�");
			return con;
		}catch(ClassNotFoundException ce) {
			System.out.println("�ȵ�");
			return null;
		}
	}
	

}
