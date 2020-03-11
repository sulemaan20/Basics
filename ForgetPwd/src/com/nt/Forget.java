package com.nt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/SendMail")
public class Forget extends HttpServlet {
	/**
	 * 
	 */
	Connection con = null;
	PreparedStatement ps = null;
	boolean k=false;
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String to = request.getParameter("to");
			//String subject = request.getParameter("subject");
			String subject="Recover your Password";
			

			final String user = "khan.sulemaan20@gmail.com";// change accordingly
			final String pass = "khan@321";

			// 1st step) Get the session object
			Properties props = System.getProperties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.user", user);
			props.put("mail.smtp.host", "smtp.gmail.com");// change accordingly
			props.put("mail.smtp.auth", "true");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, pass);
				}
			});

			//established
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// create conn
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
			System.out.println("Done="+to);
			
			// create ps
			ps = con.prepareStatement("select  password from student1 where email=?");

			ps.setString(1, to);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				k=true;
				// 2nd step)compose message
				String pwd = rs.getString("password");
				System.out.println("pwd="+pwd);
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(user));
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject(subject);
				message.setText(pwd);

				// 3rd step)send message
				Transport.send(message);
				out.println("Password successfully send to your Email ");
				System.out.println("Done");
			} // while
			if(k==false) {
				out.println("wrong username..try agnain ");
			}//if
			out.println("<a href='input.html'>home</a>");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		} catch (SQLException e) {
			// TODO: handle exception
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//catch
	}//get
}//cls
