<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Find</title>
<script>
	
</script>
<link rel="stylesheet" href="kkm/k_css/login.css">
<link rel="stylesheet" href="kkm/k_css/birth.css">
</head>
<body>
  <%
		request.setCharacterEncoding("UTF-8");
	%>
  <form method="post" action="find.do">

    <div class="segment">
      <!-- <h1>Forgot your password?</h1> -->
      <h1>Account Assistance</h1>
    </div>

    <label> <input type="text" placeholder="Name" name="uName" />
    </label>

    <div class="phone">
      <input name="uPhone1" id="uPhone1" size="3" maxlength="3"
        placeholder="010"> <input type="text" id="uPhone2"
        name="uPhone2" size="4" maxlength="4" autocomplete="off">
      <input type="text" id="uPhone3" name="uPhone3" size="4"
        maxlength="4" autocomplete="off">
    </div>
    <label> <input type="email" placeholder="Email"
      name="uEmail" />
    </label>

    <!--아이디 4글자만 보여주기 -->
    <button class="yel" type="submit">Continue</button>


  </form>
</body>
</html>