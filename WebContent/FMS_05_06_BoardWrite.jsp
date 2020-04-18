<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="board_faq.BoardDAO2"%>
<%@ page import="board_faq.BoardDTO2"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-BOARD</title>

<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />

<link rel="stylesheet" href="JDH/css/style.css">
<link rel="stylesheet" href="JDH/css/detailbox_write.css">
<link rel="stylesheet" href="JDH/css/board_write.css">
<link rel="stylesheet" href="JDH/css/footer.css">

<script
  src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
  src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<script src="JDH/JS/index.js"></script>
<script src="JDH/JS/scroll.js"></script>

<style>
@import
  url('https://fonts.googleapis.com/css?family=Do+Hyeon|Khand|Noto+Sans+KR&display=swap')
  ;
</style>

</head>

<body>

  <%
  
	String grade = null;
	if (session.getAttribute("User_member") != null) {
		grade = (String) session.getAttribute("User_member");
	}
  
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	
		String userID = null;
		String error = (String) request.getAttribute("Error");
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		if (grade.equals("ADMIN")) {
	%>
  <header>
    <div class="container">
      <div id="home"
        style="background-image: url(img/logo2.png); background-position: center; background-repeat: no-repeat; background-size: cover; width: 100px; height: 70px; top: -8px; cursor: pointer;"
        onclick="location.href='NewFile.jsp'"></div>
      <div class="box">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp">FMS</a></li>
          <li><a href="FMS_03_01_BandMap.jsp">BAND</a></li>
          <li><a href="store.jsp">CLASS</a></li>
          <li><a href="FMS_05_04_Board.jsp">BOARD</a></li>
        </ul>
      </div>
      <span id="menu"><i class="fa fa-bars" aria-hidden="true"></i></span>
    </div>
  </header>
  <div class="side-bar">
    <div class="logo">
      <p class="logop"><%=userID%></p>
      <p style="color: pink;">
        [<%=grade%>]
      </p>
    </div>
    <span id="close-menu"><i class="fa fa-times"
      aria-hidden="true"></i></span>
    <div class="container">
      <div class="box">
        <ul>
          <li><a href="product.jsp?pnum=12">BAND</a></li>
          <li><a href="product.jsp?pnum=1">VOCAL</a></li>
          <li><a href="product.jsp?pnum=2">GUITAR</a></li>
          <li><a href="product.jsp?pnum=3">BASS</a></li>
          <li><a href="product.jsp?pnum=4">DRUM</a></li>
          <li><a href="product.jsp?pnum=5">KEYBOARD</a></li>
          <li><a href="product.jsp?pnum=7">CREATE AN
              EFFECTOR/AMP</a></li>
          <li><a href="product.jsp?pnum=10">COMPOSITION</a></li>
          <li><a href="product.jsp?pnum=8">ILLUSTRATION</a></li>
          <li><a href="product.jsp?pnum=9">READING</a></li>
        </ul>
        <ul>
          <li><a href="FMS_03_02_Band.jsp">BAND</a></li>
          <li><a href="calendar.jsp">CALENDAR</a></li>
        </ul>
        <ul>
          <li><a href="#"><i class="fa fa-phone-square"
              aria-hidden="true"></i></a></li>
          <li><a href="https://www.instagram.com/_fms_band/"
            target="_blank"><i class="fa fa-instagram"
              aria-hidden="true"></i></a></li>
          <li><a
            href="https://www.youtube.com/channel/UCu-dw6LfUI3N8YmwnANROBw"
            target="_blank"><i class="fa fa-youtube-play"
              aria-hidden="true"></i></a></li>
          <li><a href="#"><i class="fa fa-commenting"
              aria-hidden="true"></i></a></li>
        </ul>
        <form class="logout" method="post" action="logout.do">
          <button type="submit">LOG OUT</button>
        </form>
      </div>
    </div>
  </div>

  <!-- 최상단 이미지 -->

  <!-- 사이드네비+메인컨텐츠 랩퍼 -->
  <div class="content clear">

    <!-- 사이드네비 -->
    <nav class="boardWrite_snb">
      <ul>
        <li><a href="FMS_05_04_Board.jsp">Board</a></li>
        <li><a href="calendar.jsp">CALENDAR</a></li>
      </ul>
    </nav>

    <!-- 메인컨텐츠 박스 -->
    <section class="mainbox">

      <div class="sec1 sec">
        <h3>FMS Write</h3>

        <section>
          <form class="content" method="post" action="write2.do">
            <input type="hidden" value="관리자" class="userID"
              name="userID">
            <table class="board_write">
              <tr>
                <th class="board_writeTitle"><label
                  class="board_writeTitle">제목</label></th>
                <td><input type="text" name="boardTitle"
                  placeholder="제목을 입력해주세요."
                  style="width: 798px; height: 30px; margin-bottom: 30px; position: relative; right: 20px;"></td>
              </tr>
              <tr>
                <th class="board_writeContent"><label
                  class="board_writeContent">내용</label></th>
                <td><textarea name="boardContent"
                    placeholder="내용을 입력해주세요."
                    style="width: 800px; height: 500px; position: relative; right: 20px;">
				 </textarea></td>
              </tr>
              <tr>

                <td>
                  <div class="writeBtn board_writebutton">
                    <button class="board_writebutton2" type="submit"
                      value="작성하기">작성하기</button>
                  </div>
                </td>
              </tr>
            </table>
          </form>
        </section>

      </div>
      <!-- sec1 end -->

    </section>

  </div>

  <footer>
    <div class="footer">
      <div class="copyright">
        <div class="footer-logo">
          <a href="NewFile.jsp" class="footer-a"> <img
            class="footer-img" src="img/logo2.png" alt="FMS Logo">
          </a>
        </div>
        <!-- footer-logo end -->

        <!-- 푸터 글자 수정할 것 -->
        <div class="copyright-bar">
          <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
            RESERVED</div>
          <!-- copyright-bar2 end -->
          <div class="copyright-bar2">
            <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민 박시온 </a>
            // <a href="" class="footer-a"> 제작일자 : 20.02.10 ~
              20.04.10 </a> // <a href="" class="footer-a"> 대표 : 박기훈 </a> //
            <a href="" class="footer-a"> 대표번호 : 010-6700-0829 </a>
          </div>
          <!-- copyright-bar2 end -->
        </div>
        <!-- copyright-bar end -->

        <!-- <div class="follow">
                  <a href="" class="follow-a">&nbsp; f o l l o w &nbsp;</a>
                </div>
                follow end -->
      </div>
      <!-- copyright end -->
    </div>
    <!-- footer end -->

  </footer>

  </div>
  <%} %>
</body>

</html>
