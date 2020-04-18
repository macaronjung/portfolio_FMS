<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="calendar.calendarDAO"%>
<%@ page import="calendar.calendarDTO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>FMS-Calendar</title>
<link rel="stylesheet" href="css/header.css" />
<link rel="stylesheet" href="css/popup.css">
<link rel="stylesheet" href="css/datepicker.css" />
<link rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  crossorigin="anonymous"></script>
<script
  src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"
  crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
<script src="JS/index.js"></script>
<script src="JS/popup.js"></script>
<script src="JS/datepicker.js"></script>
<link href='core/main.css' rel='stylesheet' />
<link href='daygrid/main.css' rel='stylesheet' />
<link href='css/footer.css' rel='stylesheet' />
<script src='core/main.js'></script>
<script src='interaction/main.js'></script>
<script src='daygrid/main.js'></script>
<%
      Date date = new Date();
      SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      String strdate = simpleDate.format(date);
      
      calendarDAO DAO = new calendarDAO();
      ArrayList<calendarDTO> List = DAO.List();
      
    %>
<script>
    
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
    
        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'interaction', 'dayGrid' ],
          defaultDate: '<%=strdate%>',
          editable: true,
          eventLimit: true, // allow "more" link when too many events
          events: [
        	<%
        	 for(int i = 0; i < List.size(); i++){
            %>
            {
              title: '<%=List.get(i).getCalendar_T()%>',
              start: '<%=List.get(i).getCalendar_S()%>',
              end: '<%=List.get(i).getCalendar_E()%>T24:00:00'
            },
        	<% } %>
          ]
        });
    
        calendar.render();
      });
    
    </script>
<style>
body {
  padding: 0;
  font-size: 14px;
  outline: none;
  border: 0;
}

#calendar {
  max-width: 900px;
  margin: 0 auto;
}
</style>
<style>
@import
  url('https://fonts.googleapis.com/css?family=Do+Hyeon|Khand|Noto+Sans+KR&display=swap')
  ;

* {
  font-family: 'Khand';
}
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
    if(userID == null)
    {
    	PrintWriter script = response.getWriter();
  		script.println("<script>");
  		script.println("alert('로그인을 해주세요.')");
  		script.println("history.back()");
  		script.println("</script>"); 
    }
    if (grade.equals("MEMBER")) {
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

  <div class="wrap">
    <div id='calendar'>
      <div class="booking"></div>
    </div>


    <nav class="snb">
      <ul>
        <li><a href="FMS_05_04_Board.jsp">Board</a></li>
        <!-- <li><a href="FMS_05_04_FAQ.jsp">FAQ</a></li> -->
        <li><a href="calendar.jsp">CALENDAR</a></li>
      </ul>
    </nav>


    <!-- 모달 -->
    <div class="modal-wrap-del">
      <div class="modal">
        <div class="boxes">

          <form action="del.do" method="post">


            <%
           for(int i = 0; i < List.size(); i++){
            %>

            <input type="checkbox" id="box-<%=i+1 %>"> <label
              for="box-<%=i+1%>"><%=List.get(i).getCalendar_T()%>
              <%=List.get(i).getCalendar_S()%>-<%=List.get(i).getCalendar_E()%></label>
            <input type="hidden" name="calendar_Num"
              value="<%=List.get(i).getCalendar_Num()%>">
            <% } %>
          
        </div>
        <input type="submit" class="del" autocomplete="off"
          value="DELETE">

        </form>

        <button>
          <i class="fa fa-times"></i>
        </button>
      </div>

    </div>


    <div class="modal-wrap">
      <div class="modal">
        <div class="today">
          <h2>Schedule</h2>
        </div>
        <div class="mc">

          <div class="container">
            <form action="calendar.do" method="post">

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">일시</span>
                </div>
                <input type="text" placeholder="Start date"
                  autocomplete="off" name="calendar_S"
                  aria-label="First name"
                  class="form-control start-date"> <input
                  type="text" placeholder="End date" autocomplete="off"
                  name="calendar_E" aria-label="Last name"
                  class="form-control end-date">
              </div>
              <input type="text" class="schedule_content"
                autocomplete="off" placeholder="내용을 입력해주세요"
                name="calendar_T"> <input type="submit"
                class="save" autocomplete="off" value="SAVE">
            </form>

          </div>
        </div>
        <button>
          <i class="fa fa-times"></i>
        </button>
      </div>
    </div>
  </div>

  <script>
    $(function() {
      var $startDate = $('.start-date');
      var $endDate = $('.end-date');

      $startDate.datepicker({
        autoHide: true,
      });
      $endDate.datepicker({
        autoHide: true,
        startDate: $startDate.datepicker('getDate'),
      });

      $startDate.on('change', function () {
        $endDate.datepicker('setStartDate', $startDate.datepicker('getDate'));
      });
    });
  </script>
  <%
    } else if(grade.equals("ADMIN")){
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
  <div class="wrap">
    <div id='calendar'>
      <div class="booking">
        <button id="del">DELETE</button>
        <button id="boobtn">
          ADD<i class="fa fa-plus" aria-hidden="true"></i>
        </button>
      </div>
    </div>


    <nav class="snb">
      <ul>
        <li><a href="FMS_05_04_Board.jsp">Board</a></li>
        <!-- <li><a href="FMS_05_04_FAQ.jsp">FAQ</a></li> -->
        <li><a href="calendar.jsp">CALENDAR</a></li>
      </ul>
    </nav>


    <!-- 모달 -->
    <div class="modal-wrap-del">
      <div class="modal">
        <div class="boxes">

          <form action="del.do" method="post">


            <%
           for(int i = 0; i < List.size(); i++){
            %>

            <input type="checkbox" id="box-<%=i+1 %>"> <label
              for="box-<%=i+1%>"><%=List.get(i).getCalendar_T()%>
              <%=List.get(i).getCalendar_S()%>-<%=List.get(i).getCalendar_E()%></label>
            <input type="hidden" name="calendar_Num"
              value="<%=List.get(i).getCalendar_Num()%>">
            <% } %>
          
        </div>
        <input type="submit" class="del" autocomplete="off"
          value="DELETE">

        </form>

        <button>
          <i class="fa fa-times"></i>
        </button>
      </div>

    </div>


    <div class="modal-wrap">
      <div class="modal">
        <div class="today">
          <h2>Schedule</h2>
        </div>
        <div class="mc">

          <div class="container">
            <form action="calendar.do" method="post">

              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">일시</span>
                </div>
                <input type="text" placeholder="Start date"
                  autocomplete="off" name="calendar_S"
                  aria-label="First name"
                  class="form-control start-date"> <input
                  type="text" placeholder="End date" autocomplete="off"
                  name="calendar_E" aria-label="Last name"
                  class="form-control end-date">
              </div>
              <input type="text" class="schedule_content"
                autocomplete="off" placeholder="내용을 입력해주세요"
                name="calendar_T"> <input type="submit"
                class="save" autocomplete="off" value="SAVE">
            </form>

          </div>
        </div>
        <button>
          <i class="fa fa-times"></i>
        </button>
      </div>
    </div>
  </div>

  <script>
    $(function() {
      var $startDate = $('.start-date');
      var $endDate = $('.end-date');

      $startDate.datepicker({
        autoHide: true,
      });
      $endDate.datepicker({
        autoHide: true,
        startDate: $startDate.datepicker('getDate'),
      });

      $startDate.on('change', function () {
        $endDate.datepicker('setStartDate', $startDate.datepicker('getDate'));
      });
    });
  </script>
  <% 
    }
  %>
</body>
</html>