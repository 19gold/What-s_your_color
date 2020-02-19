package DB;

import java.sql.*;
import java.util.*;
import DB.DBvar;

public class DBlist {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;

	public int insertmember(DBvar dv) {// 회원가입 insert하는 부분
		int result = 0;

		try {
			String sql = "insert into member values(?,?,?,?)";

			System.out.println("sql = " + sql);

			// System.out.println("1");
			con = databases.getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dv.getName());
			// System.out.println("2");
			pstmt.setString(2, dv.getId());
			// System.out.println("3");
			pstmt.setString(3, dv.getEmail());
			// System.out.println("4");
			pstmt.setString(4, dv.getPsw());
			// System.out.println("5");
			pstmt.executeUpdate();

			result = 1;

		} catch (SQLException se) {
			System.out.println(se.getMessage());
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return result;
	}

	public int checkid(DBvar dv) throws Exception {// 회원가입에서 아이디 중복체크 하는 부분
		int x = -1;
		try {
			con = databases.getCon();// DB커넥션연결
			sql = "select id from member where id = ?";
			pstmt = con.prepareStatement(sql);
			System.out.println("checkid sql ->" + sql);
			pstmt.setString(1, dv.getId());
			//System.out.println(dv.getId());
			rs = pstmt.executeQuery();
			// System.out.println("checkid->rstmt.executeQuery()됨");

			if (rs.next()) {
				System.out.println("rs.next()됨");
				x = 1;
				// msg="는 이미 사용중인 아이디 입니다.\n 다른 아이디를 선택하세요";
			} else {
				System.out.println("rs.next()안됨.");
				x = -1;
				// msg="는 사용하실 수 있는 아이디입니다.";
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("checkid 되지 않음");
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return x;
	}

	public String FindPsw(DBvar dv) {// 비밀번호 찾기 하는 부분
	
		String checkpsw = "nofindpsw";
		try {
			String sql = "select psw from member where name=? and id=?";
			// 이름과 아이디를 입력하여 비밀번호 찾는 sql문

			System.out.println("sql = " + sql);

			System.out.println("1");
			con = databases.getCon();
			pstmt = con.prepareStatement(sql);
			System.out.println("sql ->" + sql);
			pstmt.setString(1, dv.getName());
			pstmt.setString(2, dv.getId());
			System.out.println("dv.get??()확인");
			
			rs = pstmt.executeQuery();
			System.out.println("rs : " + rs);

			while(rs.next()) {
				checkpsw = rs.getString("psw");
				System.out.println("rs.next()들어옴!!");
			}
		} catch (SQLException se) {
			System.out.println(se.getMessage());
			System.out.println("try 못 들어옴!");
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return checkpsw;
	}

	public ArrayList<String> Asurvey(DBvar dv) {// 설문지 내용과 DBlist의 mood 내용 부러와서 맞는지 확인
		// String[] result = new String[5];
		ArrayList<String> result = new ArrayList<>();
		try {
			String sql_1 = "select country from result_list where location=? and mood=? and nature=? and activity=?";
			System.out.println("Asurvey -> " + sql_1);
			con = databases.getCon();
			pstmt = con.prepareStatement(sql_1);
			System.out.println("Asurvey의 con -> " + pstmt);

			pstmt.setString(1, dv.getLocation());
			pstmt.setString(2, dv.getMood());
			pstmt.setString(3, dv.getNature());
			pstmt.setString(4, dv.getActivity());

			System.out.println("query : " + pstmt.toString());
			rs = pstmt.executeQuery();
			System.out.println("Asurvey의 rs : " + rs);
			
			while(rs.next()) {
				result.add(rs.getString("country"));
			}

		} catch (SQLException se) {
			System.out.println(se.getMessage());
			System.out.println("DB try 못들어옴~");
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return result;
		
	}
	public String Insertreview(DBvar dv) {
		String result=null;
		try {
			String sql = "insert into reviews values(?,?,?,?,?,?,?,?)";

			System.out.println("sql = " + sql);

			// System.out.println("1");
			con = databases.getCon();
			pstmt = con.prepareStatement(sql);			

		} catch (SQLException se) {
			System.out.println(se.getMessage());
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return result;
	}
	public String ShowAllreview(DBvar dv) {
		String result=null;
		
		try {
			String sql = "select review from reviews";
			System.out.println("ShowAllreview -> " + sql);
			con = databases.getCon();
			pstmt = con.prepareStatement(sql);
			System.out.println("ShowAllreview의 con -> " + pstmt);
		}catch (SQLException se) {
			System.out.println(se.getMessage());
			System.out.println("DB try 못들어옴~");
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		
		return result;
	}
	/*
	public String Myreview(DBvar dv) {
		String result="noreview";
		
		try {
			String sql = "select review from reviews where id=?";
			System.out.println("Myreview의 sql -> "+sql);
			con=databases.getCon();
			pstmt=con.prepareStatement(sql);
			System.out.println("Myreview의 con->"+pstmt);
			
			pstmt.setString(1, dv.getReview());
			
			rs = pstmt.executeQuery();
			System.out.println("rs : " + rs);

			while(rs.next()) {
				result = rs.getString("review");
				System.out.println("rs.next()들어옴!!");
			}
		}catch (SQLException se) {
			System.out.println(se.getMessage());
			System.out.println("DB try 못들어옴~");
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException se) {
				System.out.println(se.getMessage());
			}
		}
		return result;
	}
	*/
}