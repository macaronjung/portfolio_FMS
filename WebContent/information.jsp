<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.userDAO"%>
<%@ page import="user.userDTO"%>
<
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Information</title>
<script>
	
</script>
<link rel="stylesheet" href="kkm/k_css/signup.css">
</head>
<body>
  <%

String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}


	userDTO dto = new userDAO().get(userID);
	
	

%>
  <form method="post" action="modify.do">

    <div class="segment">
      <h1>Account Information</h1>
    </div>

    <label> <input type="text" value="<%=userID %>"
      maxlength="15" name="User_ID" readonly />
    </label> <label> <input type="password" placeholder="Password"
      name="User_PW" value="<%=dto.getUser_PW()%>" />
    </label> <label> <input type="password" placeholder="Password Check"
      value="<%=dto.getUser_PW()%>" />
    </label> <label> <input type="text" placeholder="Name"
      name="User_Name" value="<%=dto.getUser_Name()%>" />
    </label>
    <div class="birth">
      <input name="User_year" id="yy" size="4" maxlength="4"
        value="<%=dto.getUser_year()%>" readonly> <input
        name="User_month" id="mon" size="2" maxlength="2"
        value="<%=dto.getUser_month()%>" readonly> <input
        name="User_day" id="dd" size="2" maxlength="2"
        value="<%=dto.getUser_day()%>" readonly>
    </div>
    <label> <input type="email" placeholder="Email"
      name="User_Email" />
    </label>
    <div class="phone">
      <input name="User_phone1" id="uPhone1" size="3" maxlength="3"
        placeholder="010" value="<%=dto.getUser_phone1()%>"> <input
        type="text" id="uPhone2" name="User_phone2" size="4"
        maxlength="4" autocomplete="off"
        value="<%=dto.getUser_phone2()%>"> <input type="text"
        id="uPhone3" name="User_phone3" size="4" maxlength="4"
        autocomplete="off" value="<%=dto.getUser_phone3()%>">
    </div>
    <button class="yel" type="submit">Modify</button>

  </form>
</body>
</html>