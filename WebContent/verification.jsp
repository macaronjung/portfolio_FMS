<%@ page language="java" contentType="text/html; charset=EUC-KR"
  pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="user.userDAO"%>
<%@ page import="user.userDTO"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>FMS-Verification</title>
<link rel="stylesheet" href="kkm/k_css/login.css">

</head>
<body>
  <%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

  <form method="post" action="verification.do">
    <div class="segment">
      <h1>Password Check</h1>
    </div>
    <div>
      <h2>
        <input type="text" value="<%=userID%>" name="User_ID" readonly>
      </h2>
    </div>
    <label> <input type="password" placeholder="비밀번호 확인"
      name="User_PW" />
    </label>
    <button class="yel" type="submit">Continue</button>
  </form>
</body>
</html>