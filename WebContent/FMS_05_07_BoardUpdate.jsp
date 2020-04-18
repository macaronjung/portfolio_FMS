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
<link rel="stylesheet" href="JDH/css/detailbox.css">
<link rel="stylesheet" href="JDH/css/board.css">

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
  
	int boardNum = 0;
	if (request.getParameter("boardNum") != null) {
		boardNum = Integer.parseInt(request.getParameter("boardNum"));
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
		
		BoardDTO2 dto = new BoardDAO2().getBbs(boardNum);
		
      if(grade.equals("ADMIN")){
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


  <div class="boxwrap brand img-pack">

    <!-- 최상단 이미지 -->

    <!-- 사이드네비+메인컨텐츠 랩퍼 -->
    <div class="content clear">

      <!-- 사이드네비 -->
      <nav class="snb">
        <ul>
          <li><a href="FMS_05_04_Board.jsp">Board</a></li>
          <li><a href="calendar.jsp">CALENDAR</a></li>
        </ul>
      </nav>

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">

        <div class="boardUpdate_sec1">
          <h3>FMS FAQ</h3>
          <!-- 게시판 -->
          <div class="board_update">

            <!-- <section style="height: 556px;"> -->
            <form class="content" method="post" action="update.do">
              <input type="hidden" value="관리자" class="userID"
                name="userID"> <input type="hidden"
                value=<%=boardNum%> name="boardNum">
              <table class="board_update">
                <tr>
                  <th class="board_updateTitle">제목</th>
                  <td><textarea name="boardTitle"
                      style="width: 100%; height: 20px;"><%=dto.getBoardTitle()%></textarea></td>
                </tr>
                <tr>
                  <th class="board_writeContent">
                    <div class="board_writeContent">내용</div>
                  </th>
                  <td><textarea name="boardContent"
                      style="width: 700px; height: 500px"><%=dto.getBoardContent()%></textarea></td>
                </tr>
              </table>


              <!-- board_viewButton end -->

              <!-- <div class="board_updateButton">
                  <button class="board_list board_updatebutton">
                    <a href="FMS_05_04_Board.jsp">&nbsp;&nbsp;&nbsp;목&nbsp;록&nbsp;&nbsp;&nbsp;</a>
                  </button>
                  <button class="writeBtn board_list board_updatebutton"
                    type="submit" value="수정하기">수정하기</button>
                </div> -->
          </div>
          <div class="board_viewButton">
            <button class="board_list board_button">
              <a href="FMS_05_04_Board.jsp">목록</a>
            </button>
            <button class="writeBtn board_list board_updatebutton"
              type="submit" value="수정하기">수정하기</button>
          </div>
          </form>
      </section>
      <!-- sec1 end -->

    </div>

  </div>
  <%
      }
%>

</body>
</html>