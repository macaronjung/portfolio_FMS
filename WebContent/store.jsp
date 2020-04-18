
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="product.productDAO"%>
<%@ page import="product.productDTO"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Class</title>

<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />
<link rel="stylesheet" href="lhs/lhs_css/st.css">
<link rel="stylesheet" href="lhs/lhs_css/layout.css">
<link rel="stylesheet" href="kkm/k_css/side.css">
<link rel="stylesheet" href="kkm/k_css/top.css">
<script
  src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
  src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<script src="kkm/k_JS/index.js"></script>
<script src="kkm/k_JS/img.js"></script>
<script src="kkm/k_JS/topb.js"></script>
<script src="kkm/k_JS/sidenav.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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

  	String userID = null;
  	if (session.getAttribute("userID") != null) {
  		userID = (String) session.getAttribute("userID");
  	}
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
    <div class="topbox clear">
      <div class="title-img">
        <h1>
          <div class="s_logo">
            <img src="img/logo2.png">
          </div>
        </h1>
      </div>

      <div class="img-box"></div>
      <!-- img-box end -->
    </div>
    <!-- topbox end -->

    <!-- 사이드네비+메인컨텐츠 랩퍼 -->
    <div class="content clear">

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">
        <!-- 최하단 4단 사진 박스 -->
        <div class="sec3 sec">
          <h3>FMS</h3>
          <%
          	productDAO dao = new productDAO();
          		ArrayList<productDTO> list = dao.List();
          		for (int i = 0; i < list.size(); i++) {
          			System.out.println(list.get(i).getPnum());
          %>
          <!-- 이미지 4단 구분 -->
          <!-- 영어 글귀 수정 필요(기존 사이트와 동일) -->
          <ul class="img-pack_list">
            <li><a
              href="product.jsp?pnum=<%=list.get(i).getPnum()%>"><img
                src="kkm/k_images/<%=list.get(i).getPfile()%>"
                alt="img-pack img1" class="sec3-img sec-img"></a> <strong><%=list.get(i).getPname()%></strong>
              <p>
                Price :
                <%=list.get(i).getPprice()%>
              </p>
              <h5><%=list.get(i).getPinfo()%></h5></li>
            <%
            	}
            %>
          </ul>
        </div>
        <!-- 사이드 네비게이션 -->
        <div id="mySidenav" class="sidenav">
          <a href="#" id="calender"><i
            class="fa fa-calendar-check-o"></i> CAL</a> <a href="#" id="ENG"><i
            class="fa fa-globe" aria-hidden="true"></i> ENG</a> <a href="#"
            id="map"><i class="fa fa-map-marker" aria-hidden="true"></i>
            MAP</a> <a href="javascript:void chatChannel()" id="TALK"> <img
            src="images/kakaolink_btn_small_ov.png" alt=""> TALK
          </a>
        </div>
        <!-- 탑 버튼 -->
        <div id="TOP">

          <a href="#" id="topbtn"><i
            class="fa fa-caret-square-o-up fa-lg"></i></a>
        </div>
        <script>
									//<![CDATA[
									// 사용할 앱의 JavaScript 키를 설정해 주세요.
									Kakao
											.init('91acba9775b8e8b677547a65ecd63dbd');

									function chatChannel() {
										Kakao.Channel.chat({
											channelPublicId : '_XxixaKxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
										});
									}
									//]]>
								</script>
      </section>
    </div>
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

      </div>
      <!-- copyright end -->
    </div>
    <!-- footer end -->

  </footer>

  <%
  	} else if (userID != null) {
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
    <div class="topbox clear">
      <div class="title-img">
        <h1>
          <div class="s_logo">
            <img src="img/logo2.png">
          </div>
        </h1>
      </div>

      <div class="img-box"></div>
      <!-- img-box end -->
    </div>
    <!-- topbox end -->

    <!-- 사이드네비+메인컨텐츠 랩퍼 -->
    <div class="content clear">

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">
        <!-- 최하단 4단 사진 박스 -->
        <div class="sec3 sec">
          <h3>FMS</h3>
          <%
          	productDAO dao = new productDAO();
          		ArrayList<productDTO> list = dao.List();
          		for (int i = 0; i < list.size(); i++) {
          			System.out.println(list.get(i).getPnum());
          %>
          <!-- 이미지 4단 구분 -->
          <!-- 영어 글귀 수정 필요(기존 사이트와 동일) -->
          <ul class="img-pack_list">
            <li><a
              href="product.jsp?pnum=<%=list.get(i).getPnum()%>"><img
                src="kkm/k_images/<%=list.get(i).getPfile()%>"
                alt="img-pack img1" class="sec3-img sec-img"></a> <strong><%=list.get(i).getPname()%></strong>
              <p>
                Price :
                <%=list.get(i).getPprice()%>
              </p>
              <h5><%=list.get(i).getPinfo()%></h5></li>
            <%
            	}
            %>
          </ul>
        </div>
        <!-- 사이드 네비게이션 -->
        <div id="mySidenav" class="sidenav">
          <a href="#" id="calender"><i
            class="fa fa-calendar-check-o"></i> CAL</a> <a href="#" id="ENG"><i
            class="fa fa-globe" aria-hidden="true"></i> ENG</a> <a href="#"
            id="map"><i class="fa fa-map-marker" aria-hidden="true"></i>
            MAP</a> <a href="javascript:void chatChannel()" id="TALK"> <img
            src="images/kakaolink_btn_small_ov.png" alt=""> TALK
          </a>
        </div>
        <!-- 탑 버튼 -->
        <div id="TOP">

          <a href="#" id="topbtn"><i
            class="fa fa-caret-square-o-up fa-lg"></i></a>
        </div>
        <script>
									//<![CDATA[
									// 사용할 앱의 JavaScript 키를 설정해 주세요.
									Kakao
											.init('91acba9775b8e8b677547a65ecd63dbd');

									function chatChannel() {
										Kakao.Channel.chat({
											channelPublicId : '_XxixaKxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
										});
									}
									//]]>
								</script>
      </section>
    </div>
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

      </div>
      <!-- copyright end -->
    </div>
    <!-- footer end -->

  </footer>

  <%
  	}
  %>
</body>
</html>