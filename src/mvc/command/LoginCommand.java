package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.userDAO;
import user.userDTO;

public class LoginCommand implements CommandHandler {
       
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String User_ID = request.getParameter("User_ID");
		String User_PW = request.getParameter("User_PW");
		String User_member = request.getParameter("User_member");
		userDAO dao = new userDAO();

		
		if(dao.login(User_ID, User_PW) == 1) {
			HttpSession session = request.getSession();
			userDTO dto = dao.grade(User_ID);
			session.setAttribute("userID", User_ID);
			session.setAttribute("userPW", User_PW);
			session.setAttribute("User_member", dto.getUser_member());
			response.sendRedirect("NewFile.jsp");
		} else if(dao.login(User_ID, User_PW) == -1 || dao.login(User_ID, User_PW) == 0) {
			   request.setAttribute("error", "-1");
	    	   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	    	   rd.forward(request, response);
		} 
	}
}

