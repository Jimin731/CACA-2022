package controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistence.UserDAO;  // DB 정보 정의하는 UserDAO import

// url 매핑 처리하는 코드
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    // doGet은 Login.jsp 에서 옴. 로그인 이미지를 띄워주기만 함.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);

	}
    
	// jsp에서 입력한 값과 DB 저장된 값을 비교하여 로그인 처리할 것. (post 연결)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  // 오류 날 수 있으니, 인코딩 utf-8로 진행.
		String id = request.getParameter("id");  // jsp 쪽에서 불러온 파라미터를 string에 저장함.
		String pw = request.getParameter("pw");
				
		
		UserDAO uDao = UserDAO.getInstance();   // UserDAO 에게서 판별하는 조건이 되는 인스턴스를 받아오는게 제일 중요함.
		int loginResult;  // uDao.login(id, pw); 의 반환 값이 저장될 int형 변수 loginResult 선언.
		
		try {
			loginResult = uDao.login(id, pw);
			
			if (loginResult == 1) {  // 입력된 아이디, 비번 값이 저장된 값과 모두 같으면 리턴 값이 1이다.
				request.setAttribute("loginResult", loginResult);  // setAttribute를 loginResult로 놓는다.
				HttpSession session = request.getSession();
				session.setAttribute("sessionID", id); 
				RequestDispatcher rd = request.getRequestDispatcher("/Login_Success.jsp");
				rd.forward(request, response);
			} else {  // 1이 아닌 경우에는 로그인 Fail로.
				request.setAttribute("loginResult", loginResult);   // setAttribute를 1이 아닌 값으로 놓는다.
				RequestDispatcher rd = request.getRequestDispatcher("/Login_Fail.jsp");
				rd.forward(request, response);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   // DAO의 id 값과 pw 값을 저장함. 
		
	}
   
}