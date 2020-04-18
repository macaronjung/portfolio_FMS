package mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTAuthenticatior extends Authenticator {
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("crlnot", "mimi1398*");
		 
	}
}
