package DB;

import java.sql.*;
import java.util.*;
import DB.DBvar;

public class DBlist {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	
	public int insertmember(DBvar dv) {
		int result=0;
		
		try{
			String sql="insert into member values(?,?,?,?)";
			
			System.out.println("sql = "+sql);
			
			System.out.println("1");
			con=databases.getCon();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dv.getName());
			System.out.println("2");
			pstmt.setString(2,dv.getId());
			System.out.println("3");
			pstmt.setString(3,dv.getEmail());
			System.out.println("4");
			pstmt.setString(4,dv.getPsw());
			System.out.println("5");
			pstmt.executeUpdate();
			
			result=1;
			
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch(SQLException se){
				System.out.println(se.getMessage());
			}
		}
		return result;
	}
	public int checkid(String id) throws Exception{
		int x=-1;
		try {
			con=databases.getCon();//DB커넥션연결
			sql="select id from member where id = ?";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next())
				x=1;
			else
				x=-1;
		}catch(Exception ex) {
			ex.printStackTrace();
			System.out.println("checkid 되지 않음");
		}finally {
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
		}catch(SQLException se){
				System.out.println(se.getMessage());
			}
		}
		return x;
	}
}