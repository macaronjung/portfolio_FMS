package mvc.command;
import java.io.IOException;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.*;
import mail.SMTAuthenticatior;

import user.userDAO;
import user.userDTO;

public class FindCommand implements CommandHandler {

	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String uName = request.getParameter("uName");
		String uPhone1 = request.getParameter("uPhone1");
		String uPhone2 = request.getParameter("uPhone2");
		String uPhone3 = request.getParameter("uPhone3");
		String uEmail = request.getParameter("uEmail");
		userDAO dao = new userDAO();
		userDTO dto = new userDTO();
		System.out.println(uName);
		System.out.println(uPhone2);

		ArrayList<userDTO> list = dao.memberList();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getUser_Name());
			System.out.println(list.get(i).getUser_phone1());
			System.out.println(list.get(i).getUser_phone2());
			System.out.println(list.get(i).getUser_phone3());
			System.out.println(list.get(i).getUser_ID());
			
			
			if (uName.equals(list.get(i).getUser_Name()) && uPhone1.equals(list.get(i).getUser_phone1())
					&& uPhone2.equals(list.get(i).getUser_phone2()) && uPhone3.equals(list.get(i).getUser_phone3())
					&& uEmail.equals(list.get(i).getUser_Email())) {

				// mail server 설정
				String host = "smtp.naver.com";
				String user = "crlnot"; // 자신의 네이버 계정
				String password = "mimi1398*";// 자신의 네이버 패스워드

				// 메일 받을 주소
				String to_email = list.get(i).getUser_Email();
				System.out.println(list.get(i).getUser_Email());
				System.out.println(list.get(i).getUser_ID());
				System.out.println(list.get(i).getUser_PW());
				// SMTP 서버 정보를 설정한다.
				Properties props = new Properties();
				props.put("mail.smtp.host", host);
				props.put("mail.smtp.port", 465);
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.ssl.enable", "true");

				// 인증 번호 생성기

			

			// email 전송
			try {
				Authenticator auth = new SMTAuthenticatior();

				Session ses = Session.getInstance(props, auth);

				ses.setDebug(true);

				MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체

				msg.setSubject("회원정보"); // 제목

				StringBuffer buffer = new StringBuffer();
				buffer.append("회원정보" + "<br>");
				buffer.append("아이디 : ");

				buffer.append(list.get(i).getUser_ID() + "<br>");

				buffer.append("비밀번호 : ");

				buffer.append(list.get(i).getUser_PW() + "<br>");


				Address fromAddr = new InternetAddress("crlnot@naver.com");

				msg.setFrom(fromAddr);

				Address toAddr = new InternetAddress(to_email);

				msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람

				msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 내용

				Transport.send(msg); // 전송

			} catch (Exception e) {

				e.printStackTrace();

			}

			RequestDispatcher rd = request.getRequestDispatcher("account.jsp");

			rd.forward(request, response);

		}
			
		}
	}
}