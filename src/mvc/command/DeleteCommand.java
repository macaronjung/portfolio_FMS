package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_faq.BoardDAO2;

public class DeleteCommand implements CommandHandler {
	
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bNum = request.getParameter("boardNum");
		int boardNum = Integer.parseInt(bNum);
		
		BoardDAO2 dao = new BoardDAO2();
		dao.delete(boardNum);
		
 	   RequestDispatcher rd = request.getRequestDispatcher("FMS_05_04_Board.jsp");
 	   rd.forward(request, response);
	}
}/*all end*/

