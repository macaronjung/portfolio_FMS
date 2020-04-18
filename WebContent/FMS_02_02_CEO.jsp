<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-CEO</title>

<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />

<link rel="stylesheet" type="text/css" href="JDH/css/style.css" />
<link rel="stylesheet" type="text/css" href="JDH/css/detailbox.css" />
<link rel="stylesheet" type="text/css" href="JDH/css/board.css" />
<link rel="stylesheet" type="text/css" href="JDH/css/footer.css" />

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
          <li><a href="FMS_02_01_FMS.jsp" style="color: #fed057">FMS</a></li>
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

    <!-- 백그라운드 이미지 추가 -->

    <!-- 사이드네비+메인컨텐츠 랩퍼 -->
    <div class="content clear">

      <!-- 사이드네비 -->
      <nav class="snb">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp">f &nbsp; m &nbsp; s</a></li>
          <li><a href="FMS_02_02_CEO.jsp" style="color: #fed057">c
              &nbsp; e &nbsp; o</a></li>
        </ul>
      </nav>

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">
        <div class="FMS_sec1">
          <h3>FMS Concept</h3>
          <img src="JDH/images/sec2.jpg" alt="brand-concept"
            class="sec2-img sec-img">
          <div class="sec-textbox textbox">
            <div class="sec-textbox-header text">
              <h4>family music school</h4>
              <div class="sec-textbox-content text">
                FMS는 다양한 악기와 모임을 통해 평생의 음악 가족이 되는 꿈을 가지고 있습니다. <br>
                음악을 하고 있는 사람도 음악을 하고 싶었던 사람도 함께 모여 즐기는 클래스를 추구합니다. <br>
                이러한 목표를 가지고 시작한 FMS는 지금까지의 경험과 새로운 감각을 더해 <br> 모두의
                마음에 남는 음악 그리고 모든 곳에서 환영받을 수 있는 회사 및 브랜드가 되고자 합니다.
              </div>
            </div>
          </div>
        </div>

        <!-- 최하단 3단 사진 박스 -->
        <div class="sec3 sec">
          <h3>FMS History</h3>

          <!-- 이미지 3단 구분 -->
          <ul class="img-pack_list">
            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-4.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Music</h3>
                    <p>당신의 음악을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>

            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-1.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Class</h3>
                    <p>당신의 취향을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>

            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-3.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Group</h3>
                    <p>당신의 모임을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>
          </ul>
        </div>
    </div>
  </div>

  </section>

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
    } else if(userID != null){
%>

  <header>
    <div class="container">
      <div id="home"
        style="background-image: url(img/logo2.png); background-position: center; background-repeat: no-repeat; background-size: cover; width: 100px; height: 70px; top: -8px; cursor: pointer;"
        onclick="location.href='NewFile.jsp'"></div>
      <div class="box">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp" style="color: #fed057">FMS</a></li>
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

    <!-- 백그라운드 이미지 추가 -->

    <!-- 사이드네비+메인컨텐츠 랩퍼 -->
    <div class="content clear">

      <!-- 사이드네비 -->
      <nav class="snb">
        <ul>
          <li><a href="FMS_02_01_FMS.jsp">f &nbsp; m &nbsp; s</a></li>
          <li><a href="FMS_02_02_CEO.jsp" style="color: #fed057">c
              &nbsp; e &nbsp; o</a></li>
        </ul>
      </nav>

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">
        <div class="FMS_sec1">
          <h3>FMS Concept</h3>
          <img src="JDH/images/sec2.jpg" alt="brand-concept"
            class="sec2-img sec-img">
          <div class="sec-textbox textbox">
            <div class="sec-textbox-header text">
              <h4>family music school</h4>
              <div class="sec-textbox-content text">
                FMS는 다양한 악기와 모임을 통해 평생의 음악 가족이 되는 꿈을 가지고 있습니다. <br>
                음악을 하고 있는 사람도 음악을 하고 싶었던 사람도 함께 모여 즐기는 클래스를 추구합니다. <br>
                이러한 목표를 가지고 시작한 FMS는 지금까지의 경험과 새로운 감각을 더해 <br> 모두의
                마음에 남는 음악 그리고 모든 곳에서 환영받을 수 있는 회사 및 브랜드가 되고자 합니다.
              </div>
            </div>
          </div>
        </div>

        <!-- 최하단 3단 사진 박스 -->
        <div class="sec3 sec">
          <h3>FMS History</h3>

          <!-- 이미지 3단 구분 -->
          <ul class="img-pack_list">
            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-4.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Music</h3>
                    <p>당신의 음악을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>

            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-1.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Class</h3>
                    <p>당신의 취향을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>

            <li>
              <div class="effect-wrap">
                <figure class="effect7">
                  <img src="JDH/images/sec3-3.jpg" alt="img-pack img1"
                    class="sec3-img sec-img img">
                  <figcaption>
                    <h3>FMS Group</h3>
                    <p>당신의 모임을 위한 FMS</p>
                    <a href="#" class="read">FMS More</a>
                  </figcaption>
                </figure>
              </div>
            </li>
          </ul>
        </div>
    </div>
  </div>

  </section>

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