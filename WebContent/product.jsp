<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@page import="detail.detailDTO"%>
<%@page import="detail.detailDAO"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="kkm/k_css/buy.css">
<link rel="stylesheet" href="kkm/k_css/style.css">
<link rel="stylesheet" href="css/footer.css">
<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />
<script type="text/javascript"
  src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="JS/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
  src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="JS/index.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>FMS-Class</title>

</head>
<body>

  <%
  	int pnum = 0;
  	if (request.getParameter("pnum") != null) {
  		pnum = Integer.parseInt(request.getParameter("pnum"));

  		System.out.println(pnum);
  	}

  	String grade = null;
  	if (session.getAttribute("User_member") != null) {
  		grade = (String) session.getAttribute("User_member");
  	}

  	String userID = null;
  	if (session.getAttribute("userID") != null) {
  		userID = (String) session.getAttribute("userID");
  	}
  	if (userID == null) {
  		PrintWriter script = response.getWriter();
  		script.println("<script>");
  		script.println("alert('로그인을 해주세요.')");
  		script.println("history.back()");
  		script.println("</script>");
  	}

  	detailDTO dto = new detailDAO().get(pnum);
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

  <div class="i">
    <div class="product">
      <div class="bobox">
        <img src="kkm/k_images/<%=dto.getPfile()%>" alt="">
      </div>
      <!-- 이미지 들어갈 자리 -->
      <div class="info">
        <div class="ProductHeader">
          <h2 class="ProductHeader_Title"><%=dto.getPname()%></h2>
          <div class="ProductHeader_LabelContainer">
            <span class="ProductHeader_Label-az1cmu">커리어</span> <span
              class="ProductHeader_Label-az1cmu">바로 수강가능</span>
          </div>
        </div>
        <div class="SalesProductInfoTable_Container">
          <div class="TotalAmount">
            <h2 data-test-group="defaultPrice"
              class="TotalAmount_PriceText">
              월
              <%=dto.getPprice()%>원
            </h2>
            <div class="summary">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</div>
            <hr>
          </div>
          <div class="SummaryOptions_Container">
            <div class="SummaryOptionItem">
              <p>포함 내역</p>
              <div>콘텐츠 이용권</div>
            </div>
            <div class="SummaryOptionItem">
              <p>수강 대상</p>
              <div>입문자</div>
            </div>
            <div class="SummaryOptionItem">
              <p>포함 내역</p>
              <div>준비물 키트</div>
            </div>
            <div class="SummaryOptionItem">
              <p>수강 기간</p>
              <div>Day+367</div>
            </div>
          </div>
          <hr>
          <div class="PurchaseButton_Container">

            <button type="submit" class="PurchaseButton_StyledButton"
              id="check_module">
              <span>클래스 신청하기</span>

              <script type='text/javascript'>

    $("#check_module").click(function() {
      var IMP = window.IMP; // 생략가능
      IMP.init('imp68431433');
      // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
      // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
      IMP.request_pay({
        pg : 'html5_inicis', // version 1.1.0부터 지원.
        /*
         'kakao':카카오페이,
         html5_inicis':이니시스(웹표준결제)
         'nice':나이스페이
         'jtnet':제이티넷
         'uplus':LG유플러스
         'danal':다날
         'payco':페이코
         'syrup':시럽페이
         'paypal':페이팔
         */

        pay_method : 'card',
        /*
         'samsung':삼성페이,
         'card':신용카드,
         'trans':실시간계좌이체,
         'vbank':가상계좌,
         'phone':휴대폰소액결제
         */
        merchant_uid : 'merchant_' + new Date().getTime(),
        /*
         merchant_uid에 경우
         https://docs.iamport.kr/implementation/payment
         위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
         참고하세요.
         나중에 포스팅 해볼게요.
         */
        				 name : '<%=dto.getPname()%>',
                          //결제창에서 보여질 이름
                          amount :'<%=dto.getPprice()%>',
                          //가격
                          buyer_email : 'iamport@siot.do',
                          buyer_name : '구매자이름',
                          buyer_tel : '010-1234-5678',
                          buyer_addr : '서울특별시 강남구 삼성동',
                          buyer_postcode : '123-456',
                          m_redirect_url : 'https://www.yourdomain.com/payments/complete'
                        /*
                         모바일 결제시,
                         결제가 끝나고 랜딩되는 URL을 지정
                        (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
                         */
                        },
                        function(rsp) {
                          console.log(rsp);
                          if (rsp.success) {
                            var msg = '결제가 완료되었습니다.';
                            msg += '고유ID : '
                                + rsp.imp_uid;
                            msg += '상점 거래ID : '
                                + rsp.merchant_uid;
                            msg += '결제 금액 : '
                                + rsp.paid_amount;
                            msg += '카드 승인번호 : '
                                + rsp.apply_num;
                          } else {
                            var msg = '결제에 실패하였습니다.';
                            msg += '에러내용 : '
                                + rsp.error_msg;
                          }
                          alert(msg);
                          history.back();
                        });
              });
    </script>

            </button>
          </div>
        </div>

      </div>

    </div>
    <div class="hr">
      <hr>
    </div>
    <div class="productImg">
      <img src="./kkm/k_images/<%=dto.getPcontent1()%>" alt=""> <img
        src="./kkm/k_images/<%=dto.getPcontent2()%>" alt=""> <img
        src="./kkm/k_images/<%=dto.getPcontent3()%>" alt=""> <img
        src="./kkm/k_images/<%=dto.getPcontent4()%>" alt=""> <img
        src="./kkm/k_images/<%=dto.getPcontent5()%>" alt="">
    </div>
  </div>
  <footer>
    <div class="footer">
      <div class="copyright">
        <div class="footer-logo">
          <p class="footer-a">
            <img class="footer-img" src="img/logo2.png" alt="FMS Logo">
          </p>
        </div>
        <!-- footer-logo end -->

        <!-- 푸터 글자 수정할 것 -->
        <div class="copyright-bar">
          <div class="copyright-bar1">©2020 FMS. ALL RIGHTS
            RESERVED</div>
          <!-- copyright-bar2 end -->
          <div class="copyright-bar2">
            <p class="footer-a">제작자 : 정도현 이현승 양효빈 김경민 박시온</p>
            //
            <p class="footer-a">제작일자 : 20.02.10 ~ 20.04.10</p>
            //
            <p class="footer-a">대표 : 박기훈</p>
            //
            <p class="footer-a">대표번호 : 010-6700-0829</p>
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


  <script type='text/javascript'>
  Kakao.init('5468f21991448c6924e156ff42c1f8cc');
  function chatChannel() {
    Kakao.Channel.chat({
      channelPublicId : '_XxixaKxb'
    });
  }
</script>

</body>

</html>