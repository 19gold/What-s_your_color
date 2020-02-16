package DB;

import java.sql.*;

public class databases {

	public static Connection getCon() throws SQLException{
		Connection con = null;
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gold","root","mirim2");
			System.out.println("DB연동성공");
			return con;
		}catch(ClassNotFoundException ce) {
			System.out.println("¾ÈµÊ");
			return null;
		}
	}
	
	public static void close(Connection con) {
		try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
	}
	public static void close(Statement stmt) {
		try{if(stmt != null) {stmt.close();}}catch(Exception e) {e.printStackTrace();}
	}
	public static void close(PreparedStatement pstmt) {
		try {if(pstmt != null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
	}
	public static void close(ResultSet rs) {
		try {if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
	}
	

}