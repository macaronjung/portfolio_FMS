<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Login</title>
<link rel="stylesheet" href="kkm/k_css/login.css">
</head>

<body>
  <%
String error = (String) request.getAttribute("error");

System.out.println(">>>>"+error);
	if (error == "-1") {
  		PrintWriter script = response.getWriter();
  		script.println("<script>");
  		script.println("alert('아이디와 암호를 확인해주세요')");
  		script.println("history.back()");
  		script.println("</script>");
  	}

%>
  <form method="post" action="login.do">
    <div class="segment">
      <h1>L O G I N</h1>
    </div>

    <label> <input type="text" placeholder="ID" name="User_ID" />
    </label> <label> <input type="password" placeholder="Password"
      name="User_PW" />
    </label>
    <button class="yel" type="submit">
      <i class="icon ion-md-lock"></i>LOG IN
    </button>
    <div class="SignU">
      <a id="custom-login-btn" href="javascript:loginWithKakao()"> <img
        src="images/kakao.png" alt="" width="40">
      </a>
      <div class="search">
        <a href="signup.jsp">회원가입</a> | <a href="account.jsp">아이디</a> /
        <a href="account.jsp">비번찾기</a>
      </div>
    </div>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

    <script type='text/javascript'>
      //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('5468f21991448c6924e156ff42c1f8cc');
        function loginWithKakao() {
          // 로그인 창을 띄웁니다.
          Kakao.Auth.login({
            success: function(authObj) {
              alert(JSON.stringify(authObj));
            },
            fail: function(err) {
              alert(JSON.stringify(err));
            }
          });
        };
      //]]>
    </script>
  </form>
</body>

</html>