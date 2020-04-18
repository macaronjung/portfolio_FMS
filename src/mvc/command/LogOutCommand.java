    package mvc.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogOutCommand implements CommandHandler {
       
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HttpSession session = request.getSession();
		session.removeAttribute("userID");
		session.removeAttribute("grade");
		response.sendRedirect("NewFile.jsp");
		System.out.println("로그아웃");
	}
}

