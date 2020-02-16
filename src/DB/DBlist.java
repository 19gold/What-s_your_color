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
			
			//System.out.println("1");
			con=databases.getCon();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dv.getName());
			//System.out.println("2");
			pstmt.setString(2,dv.getId());
			//System.out.println("3");
			pstmt.setString(3,dv.getEmail());
			//System.out.println("4");
			pstmt.setString(4,dv.getPsw());
			//System.out.println("5");
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
	
	public int checkid(DBvar dv) throws Exception{
		int x=-1;
		try {
			con=databases.getCon();//DB커넥션연결
			sql="select id from member where id = ?";
			pstmt=con.prepareStatement(sql);
			System.out.println("checkid sql ->"+sql);
			pstmt.setString(1, dv.getId());
			System.out.println(dv.getId());
			rs=pstmt.executeQuery();
			//System.out.println("checkid->rstmt.executeQuery()됨");
			
			if(rs.next()) {
				System.out.println("rs.next()됨");
				x=1;
				//msg="는 이미 사용중인 아이디 입니다.\n 다른 아이디를 선택하세요";
			}
			else {
				System.out.println("rs.next()안됨.");
				x=-1;
				//msg="는 사용하실 수 있는 아이디입니다.";
			}
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
	public String FindPsw(DBvar dv) {
		int result=-1;
		String pswresult,checkpsw = "pswno";
		
		try{
			String sql="select psw from member where id=? and name=?";
			
			System.out.println("sql = "+sql);
			
			System.out.println("1");
			con=databases.getCon();
			pstmt=con.prepareStatement(sql);
			System.out.println("sql ->"+sql);
			pstmt.setString(1, dv.getPsw());
			System.out.println("dv.getPsw() 확인");
			rs=pstmt.executeQuery();
			System.out.println("rs : "+rs);
			
			if(rs.next()) {
				System.out.println("rs.next()들어옴!!");
				checkpsw=rs.getString("psw");
				
			}else {
				System.out.println("rs.next()안들어오무ㅠ");
				checkpsw="pswno";
			}			
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
		return checkpsw;
	}
}