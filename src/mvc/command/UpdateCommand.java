package mvc.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_faq.BoardDAO2;
import board_faq.BoardDTO2;

public class UpdateCommand implements CommandHandler {
	
		   public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		   request.setCharacterEncoding("UTF-8");
		   BoardDAO2 dao = new BoardDAO2();
		   
		   String bNum = request.getParameter("boardNum");
		   int boardNum = Integer.parseInt(bNum);
		   String boardTitle = request.getParameter("boardTitle");
		   String boardContent = request.getParameter("boardContent");
		   
		   //값 가지고 오는지 확인
		   System.out.println(boardNum);
		   System.out.println(boardTitle);
		   System.out.println(boardContent);
			
			if (boardTitle == "" || boardContent =="" ) {
				request.setAttribute("Error", "0");
				RequestDispatcher rd = request.getRequestDispatcher("FMS_05_07_BoardUpdate.jsp");
				rd.forward(request, response);
			} else {
				dao.update(boardNum, boardTitle, boardContent);
				request.setAttribute("Error", "1");
				RequestDispatcher rd = request.getRequestDispatcher("FMS_05_05_BoardView.jsp");
				rd.forward(request, response);
			  }
		   }
}/*all end*/

