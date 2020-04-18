package mvc.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calendar.calendarDAO;
import calendar.calendarDTO;

public class DelCommand implements CommandHandler {
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		calendarDAO DAO = new calendarDAO();
		String []calendar_Num = request.getParameterValues("calendar_Num");
		
		for(int i = 0; i < calendar_Num.length; i++) {
		DAO.delete(calendar_Num[i]);
		}

		RequestDispatcher rd = request.getRequestDispatcher("calendar.jsp");
		rd.forward(request, response);
		

	    	
	}
}
