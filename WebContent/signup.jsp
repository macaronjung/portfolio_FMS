<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-SignUp</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="kkm/k_css/signup.css">
</head>
<body>

  <%
		String error = (String) request.getAttribute("Error");

		if (error != null && error.equals("1")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입이 완료되었습니다')");
			script.println("location.href='NewFile.jsp'");
			script.println("</script>");

		} else if (error != null && error.equals("0")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된데가 있쟈나~')");
			script.println("history.back()");
			script.println("</script>");

		} else if (error != null && error.equals("-1")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디야')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
  <%
		
	%>

  <form method="post" action="Signup.do">

    <div class="segment">
      <h1>SIGN UP</h1>
    </div>

    <label> <input type="text" placeholder="ID" maxlength="15"
      name="User_ID" />
    </label> <label> <input type="password" placeholder="Password"
      name="User_PW" id="password_1" class="pw" />
    </label> <label> <input type="password" placeholder="Password Check"
      name="User_PWCheck" id="password_2" class="pw" /> <span
      id="alert-success" style="display: none">비밀번호가 일치합니다</span> <span
      id="alert-danger"
      style="display: none; color: red; font-weigth: bold;">비밀번호가
        일치하지 않습니다</span>
    </label> <label> <input type="text" placeholder="Name"
      name="User_Name" />
    </label>
    <div class="birth">
      <input name="User_year" id="yy" size="4" maxlength="4"
        placeholder="1997"> <input name="User_month" id="mon"
        size="2" maxlength="2" placeholder="12"> <input
        name="User_day" id="dd" size="2" maxlength="2" placeholder="18">
    </div>
    <label> <input type="email" placeholder="Email"
      name="User_Email" />
    </label>
    <div class="phone">
      <input name="User_phone1" id="uPhone1" size="3" maxlength="3"
        placeholder="010"> <input type="text" id="uPhone2"
        name="User_phone2" size="4" maxlength="4" autocomplete="off">
      <input type="text" id="uPhone3" name="User_phone3" size="4"
        maxlength="4" autocomplete="off">
    </div>
    <button class="yel" type="submit">SIGN UP</button>
  </form>
  <script>
	$('.pw').focusout(function () {
        var pwd1 = $("#password_1").val();
        var pwd2 = $("#password_2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
                console.log("다름");
            }
        }
    });
	</script>


</body>
</html>