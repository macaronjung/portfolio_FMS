package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calendar.calendarDAO;

public class CalendarCommand implements CommandHandler {
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		calendarDAO DAO = new calendarDAO();
		String calendar_T = request.getParameter("calendar_T");
		String calendar_S = request.getParameter("calendar_S");
		String calendar_E = request.getParameter("calendar_E");
		System.out.println(calendar_T);
		
		
		if(calendar_T.equals("") || calendar_S.equals("") || calendar_E.equals("")) {
			request.setAttribute("error", "0");
			RequestDispatcher rd = request.getRequestDispatcher("calendar.jsp");
			rd.forward(request, response);
		} else {
			DAO.write(calendar_T, calendar_S, calendar_E);
			RequestDispatcher rd = request.getRequestDispatcher("calendar.jsp");
			rd.forward(request, response);
		}
	}
}
