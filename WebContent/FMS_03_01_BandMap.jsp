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

<link rel="stylesheet" type="text/css" href="JDH/css/style.css" />
<link rel="stylesheet" type="text/css" href="JDH/css/detailbox.css" />
<link rel="stylesheet" type="text/css" href="bandfoot/footer.css" />

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

      <!-- 사이드네비 -->
      <nav class="snb">
        <ul>
          <li style="font-size: 40px;"><a
            href="FMS_03_01_BandMap.jsp" style="color: #fed057">bandmap</a></li>
          <li style="font-size: 40px;"><a href="FMS_03_02_Band.jsp">b
              &nbsp;a &nbsp;n &nbsp;d</a></li>
        </ul>
      </nav>

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">

        <div class="sec1 sec">
          <h3>ZAHAV Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map" style="width: 800px; height: 400px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
					</script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
					</script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
					var container = document.getElementById('map');
					var options = {
					center: new kakao.maps.LatLng(37.558203, 126.942048),
					level: 3
					};
					
					var map = new kakao.maps.Map(container, options);
					
					/* 마커표시 시작 */
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							mapOption = {
								center : new kakao.maps.LatLng(37.558203, 126.942048), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							var map = new kakao.maps.Map(mapContainer,
									mapOption);

							// 마커가 표시될 위치입니다 
							var markerPosition = new kakao.maps.LatLng(
									37.558203, 126.942048);

							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								position : markerPosition
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);

							var iwContent = '<div style="padding:5px; color:black;">자하브(ZAHAV) 연습실<br><a href="https://map.kakao.com/link/map/자하브(ZAHAV) 연습실,37.558203, 126.942048" style="color:blue" target="_blank"> &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/자하브(ZAHAV) 연습실,37.558203, 126.942048" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							iwPosition = new kakao.maps.LatLng(37.558203,126.942048); //인포윈도우 표시 위치입니다

							// 인포윈도우를 생성합니다
							var infowindow = new kakao.maps.InfoWindow({
								position : iwPosition,
								content : iwContent
							});

							// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
							infowindow.open(map, marker);
						</script>
            <!-- 지도스크립트 끝 -->
            <div class="sec-textbox-header text"></div>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec1 end -->


        <div class="sec2 sec">
          <h3>DoubleDeuce Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map2" style="width: 800px; height: 400px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
					</script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
					</script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
					var container2 = document.getElementById('map2');
					var options2 = {
					center: new kakao.maps.LatLng(37.558450, 126.934049),
					level: 3
					};
					
					var map2 = new kakao.maps.Map(container2, options2);
					
					/* 마커표시 시작 */

							var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
							mapOption2 = {
								center : new kakao.maps.LatLng(37.558450, 126.934049), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							var map2 = new kakao.maps.Map(mapContainer2,
									mapOption2);

							// 마커가 표시될 위치입니다 
							var markerPosition2 = new kakao.maps.LatLng(
									37.558450, 126.934049);

							// 마커를 생성합니다
							var marker2 = new kakao.maps.Marker({
								position : markerPosition2
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker2.setMap(map2);

							var iwContent2 = '<div style="padding:5px; color:black; font-size:0.8em;">더블듀스(DoubleDeuce) 연습실<br><a href="https://map.kakao.com/link/map/더블듀스(DoubleDeuce) 연습실,37.558450, 126.934049" style="color:blue" target="_blank"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/더블듀스(DoubleDeuce) 연습실,37.558450, 126.934049" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							iwPosition2 = new kakao.maps.LatLng(37.558450, 126.934049); //인포윈도우 표시 위치입니다

							// 인포윈도우를 생성합니다
							var infowindow2 = new kakao.maps.InfoWindow({
								position : iwPosition2,
								content : iwContent2
							});

							// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
							infowindow2.open(map2, marker2);
						</script>
            <!-- 지도스크립트 끝 -->
            <div class="sec-textbox-header text"></div>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec2 end -->

        <div class="sec3 sec">
          <h3>FMS Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map3" style="width: 800px; height: 400px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
					</script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
					</script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
					var container3 = document.getElementById('map3');
					var options3 = {
					center: new kakao.maps.LatLng(37.505000, 126.717019),
					level: 3
					};
					
					var map3 = new kakao.maps.Map(container3, options3);
					
					/* 마커표시 시작 */

							var mapContainer3 = document.getElementById('map3'), // 지도를 표시할 div 
							mapOption3 = {
								center : new kakao.maps.LatLng(37.505000, 126.717019), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							var map3 = new kakao.maps.Map(mapContainer3,
									mapOption3);

							// 마커가 표시될 위치입니다 
							var markerPosition3 = new kakao.maps.LatLng(
									37.505000, 126.717019);

							// 마커를 생성합니다
							var marker3 = new kakao.maps.Marker({
								position : markerPosition3
							});

							// 마커가 지도 위에 표시되도록 설정합니다
							marker3.setMap(map3);

							var iwContent3 = '<div style="padding:5px; color:black; font-size:0.8em;">FMS(Bupyeong) 연습실<br><a href="https://map.kakao.com/link/map/FMS(Bupyeong) 연습실,37.505000, 126.717019" style="color:blue" target="_blank"> &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/더블듀스(DoubleDeuce) 연습실,37.505000, 126.717019" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
							iwPosition3 = new kakao.maps.LatLng(37.505000, 126.717019); //인포윈도우 표시 위치입니다

							// 인포윈도우를 생성합니다
							var infowindow3 = new kakao.maps.InfoWindow({
								position : iwPosition3,
								content : iwContent3
							});

							// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
							infowindow3.open(map3, marker3);
						</script>
            <!-- 지도스크립트 끝 -->
            <div class="sec-textbox-header text"></div>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec3 end -->

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
          <li style="font-size: 40px;"><a
            href="FMS_03_01_BandMap.jsp" style="color: #fed057">bandmap</a></li>
          <li style="font-size: 40px;"><a href="FMS_03_02_Band.jsp">b
              &nbsp;a &nbsp;n &nbsp;d</a></li>
        </ul>
      </nav>

      <!-- 메인컨텐츠 박스 -->
      <section class="mainbox">

        <div class="sec1 sec">
          <h3>ZAHAV Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map" style="width: 1000px; height: 500px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
          </script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
          </script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
          var container = document.getElementById('map');
          var options = {
          center: new kakao.maps.LatLng(37.558203, 126.942048),
          level: 3
          };
          
          var map = new kakao.maps.Map(container, options);
          
          /* 마커표시 시작 */

              var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
              mapOption = {
                center : new kakao.maps.LatLng(37.558203, 126.942048), // 지도의 중심좌표
                level : 3
              // 지도의 확대 레벨
              };

              var map = new kakao.maps.Map(mapContainer,
                  mapOption);

              // 마커가 표시될 위치입니다 
              var markerPosition = new kakao.maps.LatLng(
                  37.558203, 126.942048);

              // 마커를 생성합니다
              var marker = new kakao.maps.Marker({
                position : markerPosition
              });

              // 마커가 지도 위에 표시되도록 설정합니다
              marker.setMap(map);

              var iwContent = '<div style="padding:5px; color:black;">자하브(ZAHAV) 연습실<br><a href="https://map.kakao.com/link/map/자하브(ZAHAV) 연습실,37.558203, 126.942048" style="color:blue" target="_blank"> &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/자하브(ZAHAV) 연습실,37.558203, 126.942048" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
              iwPosition = new kakao.maps.LatLng(37.558203,126.942048); //인포윈도우 표시 위치입니다

              // 인포윈도우를 생성합니다
              var infowindow = new kakao.maps.InfoWindow({
                position : iwPosition,
                content : iwContent
              });

              // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
              infowindow.open(map, marker);
            </script>
            <!-- 지도스크립트 끝 -->
            <span class="sec-textbox-header text"></span>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec1 end -->


        <div class="sec2 sec">
          <h3>DoubleDeuce Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map2" style="width: 1000px; height: 500px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
          </script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
          </script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
          var container2 = document.getElementById('map2');
          var options2 = {
          center: new kakao.maps.LatLng(37.558450, 126.934049),
          level: 3
          };
          
          var map2 = new kakao.maps.Map(container2, options2);
          
          /* 마커표시 시작 */

              var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
              mapOption2 = {
                center : new kakao.maps.LatLng(37.558450, 126.934049), // 지도의 중심좌표
                level : 3
              // 지도의 확대 레벨
              };

              var map2 = new kakao.maps.Map(mapContainer2,
                  mapOption2);

              // 마커가 표시될 위치입니다 
              var markerPosition2 = new kakao.maps.LatLng(
                  37.558450, 126.934049);

              // 마커를 생성합니다
              var marker2 = new kakao.maps.Marker({
                position : markerPosition2
              });

              // 마커가 지도 위에 표시되도록 설정합니다
              marker2.setMap(map2);

              var iwContent2 = '<div style="padding: 10px 10px 10px 16px;color:black;font-size: 0.7em;">더블듀스(DoubleDeuce) 연습실<br><a href="https://map.kakao.com/link/map/더블듀스(DoubleDeuce) 연습실,37.558450, 126.934049" style="color:blue" target="_blank"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/더블듀스(DoubleDeuce) 연습실,37.558450, 126.934049" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
              iwPosition2 = new kakao.maps.LatLng(37.558450, 126.934049); //인포윈도우 표시 위치입니다

              // 인포윈도우를 생성합니다
              var infowindow2 = new kakao.maps.InfoWindow({
                position : iwPosition2,
                content : iwContent2
              });

              // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
              infowindow2.open(map2, marker2);
            </script>
            <!-- 지도스크립트 끝 -->
            <div class="sec-textbox-header text"></div>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec2 end -->

        <div class="sec3 sec">
          <h3>FMS Training Room</h3>
          <div class="sec-mapbox mapbox">
            <div id="map3" style="width: 1000px; height: 500px;"></div>
            <!-- 지도크기 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=91acba9775b8e8b677547a65ecd63dbd">
          </script>
            <!-- 개발자키 끝 -->
            <script type="text/javascript"
              src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing">
          </script>
            <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
            <script>
          var container3 = document.getElementById('map3');
          var options3 = {
          center: new kakao.maps.LatLng(37.505000, 126.717019),
          level: 3
          };
          
          var map3 = new kakao.maps.Map(container3, options3);
          
          /* 마커표시 시작 */

              var mapContainer3 = document.getElementById('map3'), // 지도를 표시할 div 
              mapOption3 = {
                center : new kakao.maps.LatLng(37.505000, 126.717019), // 지도의 중심좌표
                level : 3
              // 지도의 확대 레벨
              };

              var map3 = new kakao.maps.Map(mapContainer3,
                  mapOption3);

              // 마커가 표시될 위치입니다 
              var markerPosition3 = new kakao.maps.LatLng(
                  37.505000, 126.717019);

              // 마커를 생성합니다
              var marker3 = new kakao.maps.Marker({
                position : markerPosition3
              });

              // 마커가 지도 위에 표시되도록 설정합니다
              marker3.setMap(map3);

              var iwContent3 = '<div style="padding:4px 2px 5px 14px; color:black; font-size:0.9em;">FMS(Bupyeong) 연습실<br><a href="https://map.kakao.com/link/map/FMS(Bupyeong) 연습실,37.505000, 126.717019" style="color:blue" target="_blank"> &nbsp; 큰지도보기</a> <a href="https://map.kakao.com/link/to/더블듀스(DoubleDeuce) 연습실,37.505000, 126.717019" style="color:gold" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
              iwPosition3 = new kakao.maps.LatLng(37.505000, 126.717019); //인포윈도우 표시 위치입니다

              // 인포윈도우를 생성합니다
              var infowindow3 = new kakao.maps.InfoWindow({
                position : iwPosition3,
                content : iwContent3
              });

              // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
              infowindow3.open(map3, marker3);
            </script>
            <!-- 지도스크립트 끝 -->
            <div class="sec-textbox-header text"></div>
            <!-- 텍스트 박스 끝 -->
          </div>
          <!-- 맵 박스 끝 -->
        </div>
        <!-- sec3 end -->

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