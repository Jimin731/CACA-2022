<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  해당 jsp 에서는 View 부분만 처리!  -->
<!DOCTYPE html>
<html style="font-size: 16px;">

<!-- head 부분 -->
<head>

    <!-- css 파일. nicepage.css와, login.css 경로에 링크가 필요함. -->
    <link rel="stylesheet" href="./css/nicepage.css" media="screen" type="text/css">
    <link rel="stylesheet" href="./css/Login.css" media="screen" type="text/css">
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Login</title>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.2.6, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">

    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Login">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
</head>


<!-- body 부분 -->
<body class="u-body">
    <!-- 세션 ID가 null이 아닐때 = 접속한 세션이 있을 때
	<c:if test="${sessionID != null }">  
		<script>
			alert("이미 로그인 중입니다.");
			// location.href = "home.do";
		</script>
	</c:if> -->

<!-- header 부분. 글로벌 링크(로그인, 회원가입, 사이트맵, 언어 선택등 웹사이트 어느 곳에서든지 이용할 수 있는 링크)등으로 구성된 영역. 세션에 따라 해당 부분 호출해 오는 식으로 구성. -->
<header class="u-clearfix u-grey-75 u-header u-header" id="sec-61f1">
  <div class="u-clearfix u-sheet u-sheet-1">
  <!-- 내비게이션 바의 스타일 지정 -->
  <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg viewBox="0 0 24 24"></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
              </svg>
            </a>
          </div>

        <!-- 웹페이지 평시 상태일 때 버튼 스타일 및 링크, 이름 지정 (세션에 따라 다르게 호출될 부분) -->
        <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
              <li class="u-nav-item">
                <a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/login" style="padding: 10px 20px;"></a>
            </li>
            </ul>
        </div>
  </nav>
</div>
</header>


<!-- section. 내용적 흐름과 구조를 만들기 위해 내용을 나누는 용도. 로그인 폼은 섹션으로 구성되어 있다는걸 알 수 있음. -->
<section class="u-align-center u-clearfix u-section-1" id="sec-71c2">

  <div class="u-clearfix u-sheet u-sheet-1">
  		<!-- css도 그렇고, image 적용하려면 src 부분에 경로 명시해야 한다. -->
        <img class="u-image u-image-1" src="./images/saturn1.png" data-image-width="600" data-image-height="400">

    <div class="u-align-center u-container-style u-group u-palette-5-dark-3 u-radius-50 u-shape-round u-group-1">
        <div class="u-container-layout u-valign-top u-container-layout-1">
            <span class="u-icon u-icon-circle u-text-palette-1-dark-1 u-icon-1">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 45.532 45.532" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-862c"></use></svg>
              <svg class="u-svg-content" viewBox="0 0 45.532 45.532" x="0px" y="0px" id="svg-862c" style="enable-background:new 0 0 45.532 45.532;"><g>
                  <path d="M22.766,0.001C10.194,0.001,0,10.193,0,22.766s10.193,22.765,22.766,22.765c12.574,0,22.766-10.192,22.766-22.765   S35.34,0.001,22.766,0.001z M22.766,6.808c4.16,0,7.531,3.372,7.531,7.53c0,4.159-3.371,7.53-7.531,7.53   c-4.158,0-7.529-3.371-7.529-7.53C15.237,10.18,18.608,6.808,22.766,6.808z M22.761,39.579c-4.149,0-7.949-1.511-10.88-4.012   c-0.714-0.609-1.126-1.502-1.126-2.439c0-4.217,3.413-7.592,7.631-7.592h8.762c4.219,0,7.619,3.375,7.619,7.592   c0,0.938-0.41,1.829-1.125,2.438C30.712,38.068,26.911,39.579,22.761,39.579z"></path>
                </g>
              </svg>
            </span>

          <!-- 로그인 제목 -->
          <h3 class="u-text u-text-default u-text-1">Log In</h3>

          <!-- 로그인 폼 크기 및 속성 정의 -->
          <div class="u-expanded-width u-form u-login-control u-form-1">

                <!-- 로그인 폼의 action은 LoginServlet(컨트롤러)에 접근하도록. 접근 방식은 입력한 url이 가려지는 post로 설정. -->
                <form action="LoginServlet" method="post" class="u-clearfix u-form-custom-backend u-form-spacing-30 u-form-vertical u-inner-form" source="custom" name="form-3" style="padding: 10px;">

                  <!-- 1. 아이디 입력창 -->
                    <div class="u-form-group u-form-name">
                      <label for="userID" class="u-form-control-hidden u-label"></label>
                        <input id = "id" type="text" name="userID" placeholder="Enter your ID" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required=""> <!-- 타입 텍스트인, userID 이라는 이름의 입력창  -->
                    </div>

                  <!-- 2. 패스워드 입력창 -->
                    <div class="u-form-group u-form-password">
                      <label for="userPwd" class="u-form-control-hidden u-label"></label>
                        <input id = "pw" type="password" name="userPwd" placeholder="Enter your Password" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required=""> <!-- 타입 비밀번호인, userPwd 라는 이름의 입력창-->
                    </div>

                  <!-- 3. 로그인 버튼 (class로 디자인 적용 등.) -->
                    <div class="u-align-left u-form-group u-form-submit">
                      <input type="submit" value=Login class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-palette-1-dark-1 u-radius-50 u-btn-1">
                    </div>
                </form>
                
                
            </div>
      </div>
    </div>
  </div>
</section>
  </body>
</html>