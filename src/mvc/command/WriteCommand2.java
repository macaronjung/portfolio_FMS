package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_faq.BoardDAO2;

public class WriteCommand2 implements CommandHandler {
       
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		System.out.println(boardTitle);
		System.out.println(boardContent);
		
		BoardDAO2 dao = new BoardDAO2();

		if(boardTitle == "" || boardContent =="") {		
			 request.setAttribute("Error", "0");
	    	   RequestDispatcher rd = request.getRequestDispatcher("FMS_05_06_BoardWrite.jsp");
	    	   rd.forward(request, response);
		}/*if end*/ else {
			dao.write(boardTitle, boardContent);
			  RequestDispatcher rd = request.getRequestDispatcher("FMS_05_04_Board.jsp");
	    	   rd.forward(request, response);
}/*else end*/ 
}/*process end*/
}/*all end*/

