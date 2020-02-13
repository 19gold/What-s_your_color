package DB;

import java.sql.*;


public class databases {
   private Connection conn;//데이터베이스에 접근하기 위함
   private PreparedStatement pstmt;
   private ResultSet rs;//정보를 담을 수 있는 변수
   
   public databases(){
      //생성자
      String dbURL="jdbc:mysql://localhost:3306/19gold?serverTimezone=UTC";
      String dbID="root";
      String dbPW="mirim2";
      try { 
         Class.forName("org.gjt.mm.mysql.Driver");// 딱 한 번만 한다.
         conn=DriverManager.getConnection(dbURL,dbID,dbPW);
            String sql = "select * from member";         
         pstmt = conn.prepareStatement(sql); // SQL문 처리용 Statement 객체 생성
      } catch (ClassNotFoundException e) {
         handleError(e.getMessage()); 
      } catch (SQLException e) {
         handleError(e.getMessage());
      }      
      System.out.println("DB연동 완료");
      
      
   }
   
/*public int join(Member member) {
      String SQL="INSERT INTO USER VALUES(?,?,?,?,?)";
      try {
         pstmt=conn.prepareStatement(SQL);
         pstmt.setString(1, member,getId());
         pstmt.setString(2, member,getName());
         pstmt.setStrgng(3,member,getPw());
         pstmt.setString(4, member,getGender());
         pstmt.setString(5,member,getEmail());
         pstmt.setString(6, member,getReview());
         return pstmt.executeUpdate();
      }
      catch(Exception e) {
         e.printStackTrace();
   }
   return -1;
   }
*/
   private void handleError(String message) {
      // TODO Auto-generated method stub
      System.out.println("-->");
      System.out.println(message);
      System.exit(1);
   }
   public static void main(String args[]) {
      new databases();
   }
}