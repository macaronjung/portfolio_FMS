package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.userDAO;

public class ModifyCommand implements CommandHandler {
       
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String User_ID = request.getParameter("User_ID");
		String User_PW = request.getParameter("User_PW");
		String User_Name = request.getParameter("User_Name");
		String User_year = request.getParameter("User_year");
		String User_month = request.getParameter("User_month");
		String User_day = request.getParameter("User_day");
		String User_Email = request.getParameter("User_Email");
		String User_phone1 = request.getParameter("User_phone1");
		String User_phone2 = request.getParameter("User_phone2");
		String User_phone3 = request.getParameter("User_phone3");
	
		userDAO dao = new userDAO();

		
		if(dao.update(User_ID, User_PW, User_Name, User_Email, User_phone1, User_phone2, User_phone3)==-1) {
			request.setAttribute("Error", "1");
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		} else {
			dao.update(User_ID, User_PW, User_Name, User_Email, User_phone1, User_phone2, User_phone3);
			RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
			rd.forward(request, response);
		}
	}
}

