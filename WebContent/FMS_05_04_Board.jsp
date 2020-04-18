<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="board_faq.BoardDAO2"%>
<%@ page import="board_faq.BoardDTO2"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-BOARD</title>

<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />

<link rel="stylesheet" type="text/css" href="JDH/css/style.css">
<link rel="stylesheet" type="text/css" href="JDH/css/detailbox.css">
<link rel="stylesheet" type="text/css" href="JDH/css/board.css">
<link rel="stylesheet" type="text/css" href="JDH/css/foot.css">

<script
  src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
  src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<script src="JDH/JS/index.js"></script>

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

  	BoardDAO2 dao = new BoardDAO2();

  	if (request.getParameter("pageNumber") != null) {
  		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
  	}

  	System.out.println(grade);

  	if (userID == null) {
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
      <span id="close-menu"><i class="fa fa-times"
        aria-hidden="true"></i></span>
    </div>
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
          <li><a href="javascript:void chatChannel()"><i
              class="fa fa-commenting" aria-hidden="true"></i></a></li>
        </ul>
        <div class="sign-up">
          <a href="login.jsp">LOG IN <i class="fa fa-arrow-right"
            aria-hidden="true"></i></a>
        </div>
      </div>
    </div>
  </div>


  <div class="boxwrap brand img-pack">




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

        <div class="board_sec1">
          <h3>FMS BOARD</h3>
          <table class="board">
            <tr>
              <td class="boardNum board_toptext" style="width: 10%;">번호</td>
              <td class="boardMaker board_toptext" style="width: 10%;">글쓴이</td>
              <td class="boardTitle board_toptext" style="width: 60%;">제목</td>
              <td class="boardDate board_toptext" style="width: 20%;">일시</td>
            </tr>
          </table>
          <%
          	ArrayList<BoardDTO2> list = dao.getList(pageNumber);
          		for (int i = 0; i < list.size(); i++) {
          %>
          <table class="boardContent" style="width: 100%;">
            <tr>
              <td class="boardNum board_bottomtext" style="width: 10%;"><%=list.get(i).getBoardNum()%></td>
              <td class="boardMaker board_bottomtext"
                style="width: 10%;">관리자</td>
              <td class="boardTitle board_bottomtext"
                style="width: 60%;"><a
                href="FMS_05_05_BoardView.jsp?boardNum=<%=list.get(i).getBoardNum()%>">
                  <%=list.get(i).getBoardTitle()%></a></td>
              <td class="boardDate board_bottomtext" style="width: 20%;"><%=list.get(i).getBoardDate()%></td>
            </tr>
          </table>
          <%
          	}
          %>
          <div class="boardlist">
            <div class="pageCount">
              <button class="board_button"
                onclick="location.href='FMS_05_04_Board.jsp'"
                value="글목록">글목록</button>

              <%
              	int count = dao.count() + 1;
              		int boardCount = (int) Math.ceil((double) count / 10 + 1);

              		int sPage = ((pageNumber - 1) / 10) * 10 + 1;
              		int endPage = sPage + 10 - 1;

              		if (boardCount < endPage)
              			endPage = boardCount;
              %>
              <button class="board_prev board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage - 10%>">Prev</a>
              </button>
              <%
              	for (int startPage = ((pageNumber - 1) / 10) * 10 + 1; startPage <= endPage; startPage++) {
              %>
              <a class="board_list"
                href="FMS_05_04_Board.jsp?pageNumber=<%=startPage%>"><%=startPage%></a>
              <%
              	}
              		if (endPage < boardCount) {
              %>
              <button class="board_next board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage + 1%>">Next</a>
              </button>
              <%
              	}
              %>

            </div>
      </section>
      <!-- sec1 end -->

    </div>

    <footer>
      <div class="footer">
        <div class="copyright">
          <div class="footer-logo">
            <a href="" class="footer-a"> <img class="footer-img"
              src="img/logo2.png" alt="FMS Logo">
            </a>
          </div>
          <!-- footer-logo end -->

          <div class="copyright-bar">
            <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
              RESERVED</div>
            <!-- copyright-bar2 end -->
            <div class="copyright-bar2">
              <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민 박시온
              </a> // <a href="" class="footer-a"> 제작일자 : 20.02.10 ~
                20.04.10 </a> // <a href="" class="footer-a"> 대표 : 박기훈 </a>
              // <a href="" class="footer-a"> 대표번호 : 010-6700-0829 </a>
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

  <%
  	} else if (grade.equals("ADMIN")) {
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
        <form class="logout" method="post" action="logout.com">
          <button type="submit">LOG OUT</button>
        </form>
      </div>
    </div>
  </div>


  <div class="boxwrap brand img-pack">


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

        <div class="board_sec1">
          <h3>FMS BOARD</h3>
          <table class="board">
            <tr>
              <td class="boardNum board_toptext" style="width: 10%;">번호</td>
              <td class="boardMaker board_toptext" style="width: 10%;">글쓴이</td>
              <td class="boardTitle board_toptext" style="width: 60%;">제목</td>
              <td class="boardDate board_toptext" style="width: 20%;">일시</td>
            </tr>
          </table>
          <%
          	ArrayList<BoardDTO2> list = dao.getList(pageNumber);
          		for (int i = 0; i < list.size(); i++) {
          %>
          <table class="boardContent" style="width: 100%;">
            <tr>
              <td class="boardNum board_bottomtext" style="width: 10%;"><%=list.get(i).getBoardNum()%></td>
              <td class="boardMaker board_bottomtext"
                style="width: 10%;">관리자</td>
              <td class="boardTitle board_bottomtext"
                style="width: 60%;"><a
                href="FMS_05_05_BoardView.jsp?boardNum=<%=list.get(i).getBoardNum()%>">
                  <%=list.get(i).getBoardTitle()%></a></td>
              <td class="boardDate board_bottomtext" style="width: 20%;"><%=list.get(i).getBoardDate()%></td>
            </tr>
          </table>
          <%
          	}
          %>
          <div class="boardlist">
            <div class="pageCount">
              <button class="board_button"
                onclick="location.href='FMS_05_04_Board.jsp'"
                value="글목록">글목록</button>

              <%
              	int count = dao.count() + 1;
              		int boardCount = (int) Math.ceil((double) count / 10 + 1);

              		int sPage = ((pageNumber - 1) / 10) * 10 + 1;
              		int endPage = sPage + 10 - 1;

              		if (boardCount < endPage)
              			endPage = boardCount;
              %>
              <button class="board_prev board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage - 10%>">Prev</a>
              </button>
              <%
              	for (int startPage = ((pageNumber - 1) / 10) * 10 + 1; startPage <= endPage; startPage++) {
              %>
              <a class="board_list"
                href="FMS_05_04_Board.jsp?pageNumber=<%=startPage%>"><%=startPage%></a>
              <%
              	}
              		if (endPage < boardCount) {
              %>
              <button class="board_next board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage + 1%>">Next</a>
              </button>
              <%
              	}
              %>

              <button class="writeBtn board_button"
                onclick="location.href='FMS_05_06_BoardWrite.jsp'"
                value="글쓰기">글쓰기</button>
            </div>

          </div>
      </section>
      <!-- sec1 end -->

    </div>

    <footer>
      <div class="footer">
        <div class="copyright">
          <div class="footer-logo">
            <a href="" class="footer-a"> <img class="footer-img"
              src="img/logo2.png" alt="FMS Logo">
            </a>
          </div>
          <!-- footer-logo end -->

          <div class="copyright-bar">
            <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
              RESERVED</div>
            <!-- copyright-bar2 end -->
            <div class="copyright-bar2">
              <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민 박시온
              </a> // <a href="" class="footer-a"> 제작일자 : 20.02.10 ~
                20.04.10 </a> // <a href="" class="footer-a"> 대표 : 박기훈 </a>
              // <a href="" class="footer-a"> 대표번호 : 010-6700-0829 </a>
            </div>
            <!-- copyright-bar2 end -->
          </div>
          <!-- copyright-bar end -->

        </div>
        <!-- copyright end -->
      </div>
      <!-- footer end -->

    </footer>

  </div>

  <%
  	} else if(userID != null){
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
          <li><a href="#">BAND</a></li>
          <li><a href="#">VOCAL</a></li>
          <li><a href="#">GUITAR</a></li>
          <li><a href="#">BASS</a></li>
          <li><a href="#">DRUM</a></li>
          <li><a href="#">KEYBOARD</a></li>
          <li><a href="#">CREATE AN EFFECTOR/AMP</a></li>
          <li><a href="#">COMPOSITION</a></li>
          <li><a href="#">ILLUSTRATION</a></li>
          <li><a href="#">READING</a></li>
        </ul>
        <ul>
          <li><a href="#">BAND</a></li>
          <li><a href="#">PERFORMANCE SCHEDULE</a></li>
          <li><a href="information.jsp">MODIFY</a></li>
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

        <div class="board_sec1">
          <h3>FMS BOARD</h3>
          <table class="board">
            <tr>
              <td class="boardNum board_toptext" style="width: 10%;">번호</td>
              <td class="boardMaker board_toptext" style="width: 10%;">글쓴이</td>
              <td class="boardTitle board_toptext" style="width: 60%;">제목</td>
              <td class="boardDate board_toptext" style="width: 20%;">일시</td>
            </tr>
          </table>
          <%
            ArrayList<BoardDTO2> list = dao.getList(pageNumber);
              for (int i = 0; i < list.size(); i++) {
          %>
          <table class="boardContent" style="width: 100%;">
            <tr>
              <td class="boardNum board_bottomtext" style="width: 10%;"><%=list.get(i).getBoardNum()%></td>
              <td class="boardMaker board_bottomtext"
                style="width: 10%;">관리자</td>
              <td class="boardTitle board_bottomtext"
                style="width: 60%;"><a
                href="FMS_05_05_BoardView.jsp?boardNum=<%=list.get(i).getBoardNum()%>">
                  <%=list.get(i).getBoardTitle()%></a></td>
              <td class="boardDate board_bottomtext" style="width: 20%;"><%=list.get(i).getBoardDate()%></td>
            </tr>
          </table>
          <%
            }
          %>
          <div class="boardlist">
            <div class="pageCount">
              <button class="board_button"
                onclick="location.href='FMS_05_04_Board.jsp'"
                value="글목록">글목록</button>

              <%
                int count = dao.count() + 1;
                  int boardCount = (int) Math.ceil((double) count / 10 + 1);

                  int sPage = ((pageNumber - 1) / 10) * 10 + 1;
                  int endPage = sPage + 10 - 1;

                  if (boardCount < endPage)
                    endPage = boardCount;
              %>
              <button class="board_prev board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage - 10%>">Prev</a>
              </button>
              <%
                for (int startPage = ((pageNumber - 1) / 10) * 10 + 1; startPage <= endPage; startPage++) {
              %>
              <a class="board_list"
                href="FMS_05_04_Board.jsp?pageNumber=<%=startPage%>"><%=startPage%></a>
              <%
                }
                  if (endPage < boardCount) {
              %>
              <button class="board_next board_button">
                <a
                  href="FMS_05_04_Board.jsp?pageNumber=<%=endPage + 1%>">Next</a>
              </button>
              <%
                }
              %>
            </div>

          </div>
      </section>
      <!-- sec1 end -->

    </div>

    <footer>
      <div class="footer">
        <div class="copyright">
          <div class="footer-logo">
            <a href="" class="footer-a"> <img class="footer-img"
              src="img/logo2.png" alt="FMS Logo">
            </a>
          </div>
          <!-- footer-logo end -->

          <!-- 푸터 글자 수정할 것 -->
          <div class="copyright-bar">
            <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
              RESERVED</div>
            <!-- copyright-bar2 end -->
            <div class="copyright-bar2">
              <a href="" class="footer-a"> 제작자 : 정도현 이현승 양효빈 김경민 박시온
              </a> // <a href="" class="footer-a"> 제작일자 : 20.02.10 ~
                20.04.10 </a> // <a href="" class="footer-a"> 대표 : 박기훈 </a>
              // <a href="" class="footer-a"> 대표번호 : 010-6700-0829 </a>
            </div>
            <!-- copyright-bar2 end -->
          </div>
          <!-- copyright-bar end -->

        </div>
        <!-- copyright end -->
      </div>
      <!-- footer end -->

    </footer>

  </div>
  <%
  	} 
  %>
</body>

</html>
