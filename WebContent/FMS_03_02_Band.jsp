<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Band</title>

<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />

<link rel="stylesheet" type="text/css" href="lhs/css/style.css" />
<link rel="stylesheet" type="text/css" href="lhs/css/detailbox.css" />
<link rel="stylesheet" href="lhs/css/card.css">
<link rel="stylesheet" href="lhs/css/footer.css">

<script
  src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
  src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

<script src="lhs/js/index.js"></script>
<script src="lhs/js/swiper.js"></script>
<script src="lhs/js/more.js"></script>
<!-- <script src="JS/scroll.js"></script> -->

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
          <li><a href="FMS_03_01_BandMap.jsp"
            style="color: #fed057">BAND</a></li>
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

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox" style="height: 100%;">
        <!-- 밴드 소개1 -->
        <div class="sec1 sec">
          <h3>FMS 이대 Band</h3>
          <div class="wrap">
            <figure class="snip">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>페르플로</h3>
                <h5>마스터 : 김현우</h5>
                <h5>보컬 : 권남중,김미영</h5>
                <h5>기타 : 정승찬,노영훈</h5>
                <h5>베이스 : 김현우</h5>
                <h5>피아노 : 김도윤</h5>
                <h5>드럼 : 홍찬민</h5>
              </figcaption>

            </figure>

            <figure class="snip">
              <img src="lhs/images/놀젠.png" alt="sample57" />
              <figcaption>
                <h3>보컬팀 놀젠</h3>
                <h5>마스터 : 김제형</h5>
                <h5>보컬 : 박현성,이경재,모상혁,이은주</h5>
              </figcaption>

            </figure>
            <figure class="snip">
              <img src="lhs/images/멜트다운.jpg" alt="sample60" />
              <figcaption>
                <h3>멜트다운</h3>
                <h5>마스터 김성준</h5>
                <h5>보컬 : 장진혁,이영경</h5>
                <h5>기타 : 강세근</h5>
                <h5>피아노 : 정대용</h5>
                <h5>베이스 : 김성준</h5>
                <h5>드럼 : 권재영</h5>
              </figcaption>

            </figure>


            <figure class="snip">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>듀미록스</h3>
                <!-- <h5>마스터 : </h5>
							<h5>보컬 : </h5>
							<h5>기타 : </h5>
							<h5>베이스 : </h5>
							<h5>피아노 : </h5>
							<h5>드럼 : </h5> -->
              </figcaption>
            </figure>
            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>우석팀 이름 미정</h3>
                <!-- <h5>마스터 :  </h5>
								<h5>보컬 : </h5>
								<h5>기타 : </h5>
								<h5>베이스 :</h5>
								<h5>피아노 : </h5>
								<h5>드럼 : </h5> -->
              </figcaption>


            </figure>


            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>아니에요</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>라일락</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>핑크포니</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>마더네이처</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>선데이브리즈</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>PEARLS</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>탭</h3>
                <!-- <h5> </h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>IN THE SHIP</h3>
                <!-- <h5> </h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>성춘쌤 밴드</h3>
                <!-- <h5> </h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5> -->
              </figcaption>

            </figure>


            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>블루오션</h3>
                <!-- <h5> </h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>피치그레이</h3>
                <!-- <h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5>
							<h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>GROOVY</h3>
                <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
              </figcaption>
            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>후리타임</h3>
                <!-- <h5>마스터 : 김현우 </h5>
								<h5>보컬 : 권남중,김미영</h5>
								<h5>기타 : 정승찬,노영훈</h5>
								<h5>베이스 : 김현우</h5>
								<h5>피아노 : 김도윤</h5>
								<h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

          </div>
          <div class="container1">

            <button class="btn">+</button>

          </div>


          <!-- 밴드 소개2   -->
          <div class="sec1 sec">
            <h3>FMS 신촌 Band</h3>

            <div class="wrap">
              <figure class="snip">
                <img src="lhs/images/라온1.jpg" alt="sec-img" />
                <figcaption>
                  <h3>허니나잇</h3>
                  <!-- <h5>마스터 : 황민기 </h5>
							<h5>보컬 : 노현수,오태양</h5>
							<h5>기타 : 유선수,성민</h5>
							<h5>베이스 : 황민기,김명기</h5>
							<h5>드럼 : 김진근</h5> -->
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>코스믹</h3>
                  <!-- <h5>마스터 : 황민기</h5>
							<h5>보컬 :  황수빈,고진혁</h5>
							<h5>기타 : 유선수,배승현</h5>
							<h5>베이스 : 황민기</h5>
							<h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>토미밴드</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>
              <figure class="snip">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>우석 이름 미정</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>

              <figure class="snip2">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>메이데이</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
							<h5>보컬 : 권남중,김미영</h5>
							<h5>기타 : 정승찬,노영훈</h5>
							<h5>베이스 : 김현우</h5>
							<h5>피아노 : 김도윤</h5>
							<h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>

            </div>

          </div>

          <div class="container2">

            <button class="btn1">+</button>
          </div>

          <div class="sec1 sec">
            <h3>FMS 인천 Band</h3>
            <div class="wrap">
              <figure class="snip">
                <img src="lhs/images/라온1.jpg" alt="sec-img" />
                <figcaption>
                  <h3>라온</h3>
                  <h5>마스터 : 황민기</h5>
                  <h5>보컬 : 노현수,오태양</h5>
                  <h5>기타 : 유선수,성민</h5>
                  <h5>베이스 : 황민기,김명기</h5>
                  <h5>드럼 : 김진근</h5>
                </figcaption>
              </figure>

              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>X-list</h3>
                  <h5>마스터 : 황민기</h5>
                  <h5>보컬 : 황수빈,고진혁</h5>
                  <h5>기타 : 유선수,배승현</h5>
                  <h5>베이스 : 황민기</h5>
                  <h5>드럼 : 안성현,유승현</h5>
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/불타는화요일.jpg" alt="sample57" />
                <figcaption>
                  <h3>불타는화요일</h3>
                  <h5>마스터 : 박기훈</h5>
                  <h5>보컬 : 박시온,장성현,마지형</h5>
                  <h5>기타 : 김상명</h5>
                  <h5>베이스 : 김명기,정예지</h5>
                  <h5>드럼 : 한아영,김현섭</h5>
                  <h5>키보드 : 윤시화, 차준경</h5>
                  <h5>섹소폰 : 한가람</h5>
                </figcaption>

              </figure>


              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름 미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
							<h5>보컬 :  황수빈,고진혁</h5>
							<h5>기타 : 유선수,배승현</h5>
							<h5>베이스 : 황민기</h5>
							<h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip3">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
							<h5>보컬 :  황수빈,고진혁</h5>
							<h5>기타 : 유선수,배승현</h5>
							<h5>베이스 : 황민기</h5>
							<h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip3">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름 미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
							<h5>보컬 :  황수빈,고진혁</h5>
							<h5>기타 : 유선수,배승현</h5>
							<h5>베이스 : 황민기</h5>
							<h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>
            </div>

          </div>
          <div class="container3">

            <button class="btn2">+</button>
          </div>
        </div>

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

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox" style="height: 100%;">
        <!-- 밴드 소개1 -->
        <div class="sec1 sec">
          <h3>FMS 이대 Band</h3>
          <div class="wrap">
            <figure class="snip">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>페르플로</h3>
                <h5>마스터 : 김현우</h5>
                <h5>보컬 : 권남중,김미영</h5>
                <h5>기타 : 정승찬,노영훈</h5>
                <h5>베이스 : 김현우</h5>
                <h5>피아노 : 김도윤</h5>
                <h5>드럼 : 홍찬민</h5>
              </figcaption>

            </figure>

            <figure class="snip">
              <img src="lhs/images/놀젠.png" alt="sample57" />
              <figcaption>
                <h3>보컬팀 놀젠</h3>
                <h5>마스터 : 김제형</h5>
                <h5>보컬 : 박현성,이경재,모상혁,이은주</h5>
              </figcaption>

            </figure>
            <figure class="snip">
              <img src="lhs/images/멜트다운.jpg" alt="sample60" />
              <figcaption>
                <h3>멜트다운</h3>
                <h5>마스터 김성준</h5>
                <h5>보컬 : 장진혁,이영경</h5>
                <h5>기타 : 강세근</h5>
                <h5>피아노 : 정대용</h5>
                <h5>베이스 : 김성준</h5>
                <h5>드럼 : 권재영</h5>
              </figcaption>

            </figure>


            <figure class="snip">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>듀미록스</h3>
                <!-- <h5>마스터 : </h5>
              <h5>보컬 : </h5>
              <h5>기타 : </h5>
              <h5>베이스 : </h5>
              <h5>피아노 : </h5>
              <h5>드럼 : </h5> -->
              </figcaption>
            </figure>
            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>우석팀 이름 미정</h3>
                <!-- <h5>마스터 :  </h5>
                <h5>보컬 : </h5>
                <h5>기타 : </h5>
                <h5>베이스 :</h5>
                <h5>피아노 : </h5>
                <h5>드럼 : </h5> -->
              </figcaption>


            </figure>


            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>아니에요</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>라일락</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>핑크포니</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>마더네이처</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>선데이브리즈</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>PEARLS</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>탭</h3>
                <!-- <h5> </h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>IN THE SHIP</h3>
                <!-- <h5> </h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>성춘쌤 밴드</h3>
                <!-- <h5> </h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5> -->
              </figcaption>

            </figure>


            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>블루오션</h3>
                <!-- <h5> </h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>피치그레이</h3>
                <!-- <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5>
              <h5></h5> -->
              </figcaption>

            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>GROOVY</h3>
                <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
              </figcaption>
            </figure>

            <figure class="snip1">
              <img src="lhs/images/페르플로.jpg" alt="sample57" />
              <figcaption>
                <h3>후리타임</h3>
                <!-- <h5>마스터 : 김현우 </h5>
                <h5>보컬 : 권남중,김미영</h5>
                <h5>기타 : 정승찬,노영훈</h5>
                <h5>베이스 : 김현우</h5>
                <h5>피아노 : 김도윤</h5>
                <h5>드럼 : 홍찬민</h5> -->
              </figcaption>

            </figure>

          </div>
          <div class="container1">

            <button class="btn">+</button>

          </div>


          <!-- 밴드 소개2   -->
          <div class="sec1 sec">
            <h3>FMS 신촌 Band</h3>

            <div class="wrap">
              <figure class="snip">
                <img src="lhs/images/라온1.jpg" alt="sec-img" />
                <figcaption>
                  <h3>허니나잇</h3>
                  <!-- <h5>마스터 : 황민기 </h5>
              <h5>보컬 : 노현수,오태양</h5>
              <h5>기타 : 유선수,성민</h5>
              <h5>베이스 : 황민기,김명기</h5>
              <h5>드럼 : 김진근</h5> -->
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>코스믹</h3>
                  <!-- <h5>마스터 : 황민기</h5>
              <h5>보컬 :  황수빈,고진혁</h5>
              <h5>기타 : 유선수,배승현</h5>
              <h5>베이스 : 황민기</h5>
              <h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>토미밴드</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>
              <figure class="snip">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>우석 이름 미정</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>

              <figure class="snip2">
                <img src="lhs/images/페르플로.jpg" alt="sample57" />
                <figcaption>
                  <h3>메이데이</h3>
                  <!-- <h5>마스터 : 김현우 </h5>
              <h5>보컬 : 권남중,김미영</h5>
              <h5>기타 : 정승찬,노영훈</h5>
              <h5>베이스 : 김현우</h5>
              <h5>피아노 : 김도윤</h5>
              <h5>드럼 : 홍찬민</h5> -->
                </figcaption>

              </figure>



            </div>


          </div>

          <div class="container2">

            <button class="btn1">+</button>
          </div>

          <div class="sec1 sec">
            <h3>FMS 인천 Band</h3>
            <div class="wrap">
              <figure class="snip">
                <img src="lhs/images/라온1.jpg" alt="sec-img" />
                <figcaption>
                  <h3>라온</h3>
                  <h5>마스터 : 황민기</h5>
                  <h5>보컬 : 노현수,오태양</h5>
                  <h5>기타 : 유선수,성민</h5>
                  <h5>베이스 : 황민기,김명기</h5>
                  <h5>드럼 : 김진근</h5>
                </figcaption>
              </figure>

              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>X-list</h3>
                  <h5>마스터 : 황민기</h5>
                  <h5>보컬 : 황수빈,고진혁</h5>
                  <h5>기타 : 유선수,배승현</h5>
                  <h5>베이스 : 황민기</h5>
                  <h5>드럼 : 안성현,유승현</h5>
                </figcaption>

              </figure>

              <figure class="snip">
                <img src="lhs/images/불타는화요일.jpg" alt="sample57" />
                <figcaption>
                  <h3>불타는화요일</h3>
                  <h5>마스터 : 박기훈</h5>
                  <h5>보컬 : 박시온,장성현,마지형</h5>
                  <h5>기타 : 김상명</h5>
                  <h5>베이스 : 김명기,정예지</h5>
                  <h5>드럼 : 한아영,김현섭</h5>
                  <h5>키보드 : 윤시화, 차준경</h5>
                  <h5>섹소폰 : 한가람</h5>
                </figcaption>

              </figure>


              <figure class="snip">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름 미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
              <h5>보컬 :  황수빈,고진혁</h5>
              <h5>기타 : 유선수,배승현</h5>
              <h5>베이스 : 황민기</h5>
              <h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip3">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
              <h5>보컬 :  황수빈,고진혁</h5>
              <h5>기타 : 유선수,배승현</h5>
              <h5>베이스 : 황민기</h5>
              <h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>

              <figure class="snip3">
                <img src="lhs/images/엑스리스트.jpg" alt="sample57" />
                <figcaption>
                  <h3>이름 미정</h3>
                  <!-- <h5>마스터 : 황민기</h5>
              <h5>보컬 :  황수빈,고진혁</h5>
              <h5>기타 : 유선수,배승현</h5>
              <h5>베이스 : 황민기</h5>
              <h5>드럼 : 안성현,유승현</h5> -->
                </figcaption>

              </figure>
            </div>

          </div>
          <div class="container3">

            <button class="btn2">+</button>
          </div>
        </div>

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