package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.userDAO;

public class VerificationCommand implements CommandHandler {
       
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String User_ID = request.getParameter("User_ID");
		String User_PW = request.getParameter("User_PW");
		System.out.println(User_ID);
		System.out.println(User_PW);
		
		userDAO dao = new userDAO();
		
		if(dao.login(User_ID, User_PW) == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("userID", User_ID);
			response.sendRedirect("information.jsp");
	}
}
}

