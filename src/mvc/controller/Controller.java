package mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CalendarCommand;
import mvc.command.CommandHandler;
import mvc.command.DelCommand;
import mvc.command.DeleteCommand;
import mvc.command.FindCommand;
import mvc.command.LogOutCommand;
import mvc.command.LoginCommand;
import mvc.command.ModifyCommand;
import mvc.command.SignUpCommand;
import mvc.command.UpdateCommand;
import mvc.command.VerificationCommand;
import mvc.command.WriteCommand2;


@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		control(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		control(request, response);
	}
	private void control(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		CommandHandler command = null;
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		System.out.println(com);
		if(com.equals("/login.do")) {
			command = new LoginCommand();
			command.process(request, response);
		} else if(com.equals("/logout.do")) {
			command = new LogOutCommand();
			command.process(request, response);
			System.out.println("연결");
		} else if(com.equals("/Signup.do")) {
			command = new SignUpCommand();
			command.process(request, response);
		} else if(com.equals("/find.do")) {
			command = new FindCommand();
			command.process(request, response);
		}  else if(com.equals("/verification.do")) {
			command = new VerificationCommand();
			command.process(request, response);
		} else if(com.equals("/modify.do")) {
			command = new ModifyCommand();
			command.process(request, response);
		} else if(com.equals("/write2.do")) {
			command = new WriteCommand2();
			command.process(request, response);
		} else if(com.equals("/update.do")) {
			command = new UpdateCommand();
			command.process(request, response);
		} else if(com.equals("/delete.do")) {
			command = new DeleteCommand();
			command.process(request, response);
		} else if(com.equals("/list.do")) {
			command = new DeleteCommand();
			command.process(request, response);
		} else if(com.equals("/calendar.do")) {
			command = new CalendarCommand();
			command.process(request, response);
		} else if(com.equals("/del.do")) {
			command = new DelCommand();
			command.process(request, response);
		}
	} 
}
