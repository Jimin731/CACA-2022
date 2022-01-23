package persistence;  // DB와 연동하여 기능하는 DAO class.

// DB 질의를 통하여 데이터에 접근하는 객체
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;   // 데이터 전달을 메서드와 '?' 를 이용해서 전달 가능하게 해주는 모듈. 기본적으로는 쿼리문 호출.

public class UserDAO {
	
	private static UserDAO instance;  // 인스턴스를 참조할 수 있는 자기 자신타입의 참조변수
	
	public int login(String id, String pw) throws SQLException {  // 매개변수 id와 pw를 받음.
		
		Connection con = null;				// DB접속
		PreparedStatement pstmt = null; 	// SQL문 저장
		ResultSet rs = null; 				// SQL문 실행
		
		//rds db 관련 정보
		final String URL 	= "";  // url을 뭘로 적어야 하는지?
		final String USER 	= "admin";
		final String PASSWD	= "qwer1234";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(URL, USER, PASSWD);   // 드라이버 사용하여, url, 유저 이름, 패스워드 입력하여 db 커넥션.
		StringBuffer query = new StringBuffer();                
		query.append("SELECT user_pw").append(" FROM user").append(" WHERE user_id = '?'");  // 쿼리문 삽입. user 테이블에서 입력한 id에 대응되는 패스워드를 찾는다.
		
		
		System.out.println("DB 접속 완료");
		
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, id);  // 세션 판별하는 스트링.
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				if(rs.getString("user_pw").equals(pw)) {  // 입력된 pw랑 user_pw에 저장된 값이 같을 때,
					return 1;   // 1을 반환한다.
				} else {       
					return 0;   // 다를때는 0을 반환한다.
				}
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
			pstmt.close();
			rs.close();	
		}
		return -1;
	}

	public static UserDAO getInstance() {  // private로 선언된 참조 변수의 주소값 얻기 위함.
		if (instance == null)  // 참조변수 null 일 때만 인스턴스화
			instance = new UserDAO();   // 참조변수 값 리턴
		return instance;
	}
}


/*

con = DriverManager.getConnection(URL, USER, PASSWD); // 위에 입력한 드라이버와 db정보들을 입력하여 db 연결.
StringBuffer query = new StringBuffer();
query.append("SELECT user_pw").append(" FROM user").append(" WHERE user_id = ?");

// user 테이블에서, 입력받은 user_id에 대응하는 user_pw를 구한다.
try {
	pstmt = con.prepareStatement(query.toString());
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		// 아이디와 비번이 같으면 1, 아니면 0을 반환.
		if(rs.getString("user_pw").equals(pw)) {
			return 1;
		} else {
			return 0;
		}
	}
	
} catch (SQLException e) {  // SQL 예외처리.
	e.printStackTrace();
} finally {
	closeAll(rs ,pstmt, con);
}
return -1;

*/
		
		
		
	/*
	// vo라는 리스트에, 쿼리문의 결과값을 저장함.
	public List<UserVO> Userinfo() throws SQLException {
		   
		  // List 객체를 인스턴스 합니다.
		  List<UserVO> list = new ArrayList<UserVO>();
		  Connection conn = null;			// DB접속
		  PreparedStatement pstmt = null; 	// SQL문 저장
		  ResultSet rs = null; 				// SQL문 실행
	  
		  
	 // 여기서는 데이터를 얼마나 불러올 지 결정할 수 있다.
	  try {  // 구문객체 획득
		  conn = DriverManager.getConnection(URL, USER, PASSWD); // 위에 입력한 드라이버와 db정보들을 입력하여 db 연결.
		  String sql = "select * from user where user_email != '' AND user_pw != '' AND user_name != '';";  // sql문 선언
		  pstmt = conn.prepareStatement(sql);  // sql문 저장
	      rs = pstmt.executeQuery();  		   // sql문 실행
				
	      while(rs.next()) { // 테이블에 다음 레코드가 있으면 실행한다.
	    	  	UserVO vo = new UserVO();
	    	  	
	    	  	vo.setUser_id(rs.getString(1));
	    	  	vo.setUser_pw(rs.getString(2));
	    	  	vo.setUser_name(rs.getString(3));
	    	  	vo.setUser_email(rs.getString(4));
	    	  	vo.setAbout(rs.getString(5));
	    	  	vo.setContact(rs.getString(6));
	    	  	
		        // SQL 결과를 list 에 저장합니다.
		        list.add(vo);
	      }
	    }
	  
	  
	  	// 예외 발생시 모두 종료  
	  	catch (Exception e) {
	      e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return list;
	}
	*/

