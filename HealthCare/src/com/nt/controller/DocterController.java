package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.ParseException;

import com.nt.dto.PersonDto;
import com.nt.service.PersonService;
import com.nt.service.PersonServiceimpl;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadParameters;

@WebServlet(name = "Login", urlPatterns = { "/plog", "/reg3", "/pfupdate", "/plogout", "/pdelete", "/passpdate",
		"/send" })
public class DocterController extends HttpServlet {

	static final long serialVersionUID = 1L;
	RequestDispatcher rd = null;
	public void processRequest(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, ParseException, IOException {
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		// RequestDispatcher rd = null;
		String Firstname;
		String Lastname;
		String dob;
		String mno;
		String gender;
		String email;
		String password;
		String cpassword;
		String state;
		String country;
		int income;
		String filep;
		String file;
		String adds;
		String photoPath = "E:/servlet/HealthCare/WebContent/image";

		// String referer = req.getHeader("referer");
		PersonService service = new PersonServiceimpl();
		HttpSession ses = null;
		PersonDto dto = new PersonDto();
		// System.out.println("check req=" + referer);
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");
		String userPath = req.getServletPath();
		System.out.println("usePath===" + userPath);

		try {
			// RequestDispatcher rd =
			// req.getRequestDispatcher(referer.substring(referer.lastIndexOf("/") + 1));
			if (userPath.equals("/plog")) {
				System.out.println("Login servlet");
				email = req.getParameter("email");
				password = req.getParameter("pass");
				System.out.println("check==" + password);
				dto = service.readUser(email, password);

				// from dto data retrievefrom data base and pass to Login page
				System.out.println("===logg(Controller--log)=====");
				System.out.println("dto.getEmail()=" + dto.getEmail());
				System.out.println("dto.getPass()=" + dto.getPassword());
				String s = dto.getGender();
				System.out.println("dto.getGender()=" + dto.getGender());

				if (dto.getGender() == null) {
					pw.println("<h3 style=color:red;text-align:right;>User Name Mismatch...try again</h3>");
					rd = req.getRequestDispatcher("/Login.jsp");
					rd.include(req, res);
				} // inner if

				else if (dto.getPassword().equals(password)) {
					ses = req.getSession();
					ses.setAttribute("gender", s);
					pw.println("<h3 style=color:red;text-right:center;>Successfully Login</h3>");
					rd = req.getRequestDispatcher("/person.jsp");
					rd.include(req, res);
				} // innner else if

				else {
					pw.println("<h3 style=color:red;text-align:right;>Password Missmatch ...try again</h3>");
					rd = req.getRequestDispatcher("/Login.jsp");
					rd.include(req, res);
				} // inner else if
			} // if

			else if (userPath.equals("/reg")) {
//				MultipartFormDataRequest nreq = new MultipartFormDataRequest(req);
//				UploadBean udp = new UploadBean();

				// general settings
				System.out.println(" Sevlet");

				income = Integer.parseInt(req.getParameter("income"));
				//filep = req.getParameter("photo");
				Firstname = req.getParameter("fname");
				Lastname = req.getParameter("lname");
				adds = req.getParameter("adds");
				state = req.getParameter("st");
				country = req.getParameter("con");
				mno = req.getParameter("mno");
				email = req.getParameter("email");
				gender = req.getParameter("gender");
				dob = req.getParameter("dob");
				adds = req.getParameter("adds");
				password = req.getParameter("pass");
				cpassword = req.getParameter("cpass");
				
				// setting related photo uploading
//				udp.setFolderstore(photoPath);
//				udp.setOverwrite(false);
//				udp.store(nreq, "photo");
//
//				Vector his = udp.getHistory();
//				ArrayList<String> fname = new ArrayList<String>();
//				for (int i = 0; i < his.size(); i++) {
//					UploadParameters up = (UploadParameters) his.elementAt(i);
//					fname.add(up.getFilename());
//
//				} // for
//				System.out.println("photo" + fname.get(0));
				// get Access to HttpSession object
		
				// pw.println(division);
				System.out.println("After read session");
				// store 3 forms/requests data to DB table as record
				if(password.equals(cpassword))
				{	
				dto = new PersonDto();
				dto.setFirstname(Firstname);
				dto.setLastname(Lastname);
				dto.setDob(dob);
				dto.setGender(gender);
				dto.setEmail(email);
				dto.setPassword(password);
				dto.setAdds(adds);
				dto.setCountry(country);
				dto.setState(state);
				dto.setIncome(income);
			
				
				// use Service class
				
				
			}else {
				pw.println("Password missmitch");
				rd=req.getRequestDispatcher("preg.jsp");
				rd.include(req, res);
			}
				service = new PersonServiceimpl();
				String finalResult = service.register(dto);
				pw.println("<h1 style='color:red;text-align:center'>" + finalResult + "</h1>");
				System.out.println("Service result");
			} // else if

			else if (userPath.equals("/pfupdate")) {
				dto = new PersonDto();

				ses = req.getSession();
				email = (String) ses.getAttribute("email");
				password = (String) ses.getAttribute("pass");

				//
				dto.setEmail(email);
				dto.setPassword(password);

				// use service class
				service = new PersonServiceimpl();
				// call the method of service class
				String update = service.upuser(dto);

				pw.println("<h1 style='color:red;text-align:center'>" + update + "</h1>");
			} // inner else

			else if (userPath.equals("/plogout")) {
				ses = req.getSession();
				ses.invalidate();

				pw.println("<h1 style='color:red;text-align:center'>Successfully Lougdout</h1>");
				rd = req.getRequestDispatcher("plogout.jsp");
				rd.include(req, res);
			} // inner else

			else if (userPath.equals("/pdelete")) {
				ses = req.getSession();
				email = (String) ses.getAttribute("email");
				password = req.getParameter("pass");
				dto = new PersonDto();
				dto.setEmail(email);
				dto.setPassword(password);

				service = new PersonServiceimpl();
				String resdelete = service.deletuser(dto);

				pw.println("<h1 style='color:red;text-align:center'>" + resdelete + "</h1>");

			} // inner else
			else if (userPath.equals("/passpdate")) {
				ses = req.getSession();
				String newpass = req.getParameter("newpass");
				email = (String) ses.getAttribute("email");
				password = (String) ses.getAttribute("pass");

				dto = new PersonDto();
				dto.setEmail(email);
				dto.setPassword(password);

				service = new PersonServiceimpl();
				String respass = service.uppass(dto);
				pw.println("<h1 style='color:red;text-align:center'>" + respass + "</h1>");
			} // inner else

			else if (userPath.equals("/send")) {
				res.setContentType("text/html");
				PrintWriter out = res.getWriter();
				String subject = "Recover your Password";
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

				String to = req.getParameter("to");
				System.out.println("===forget(Controller--before)=====");
				dto = service.forgetUser(to); // forword to service

				// after retrieve data
				System.out.println("===forget(Controller--after)=====");

				String p = dto.getPassword();
				System.out.println("pwd=" + p);

				if (p == null) {
					out.println("Wrong Username.......try agnain");
				} else {
					// 2nd step)compose message
					System.out.println("pwd=" + p);
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress(user));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject(subject);
					message.setText(p);

					// 3rd step)send message
					Transport.send(message);
					out.println("Password successfully send to your Email");
					System.out.println("Done");
				}

				pw.println("<a href='input.html'>home</a>");

			} // outer

			else {
				pw.println("<h1 style='color:red;text-align:center'>Internal problem</h1>");
			} // outer else

		} // try
		catch (MessagingException e) {
			throw new RuntimeException(e);
		} catch (SQLException e) {
			// TODO: handle exception
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // catch
		catch (Exception e) {
			e.printStackTrace();

		} // catch
	}// get

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(req, res);
		} catch (ParseException ex) {
			Logger.getLogger(DocterController.class.getName()).log(Level.SEVERE, null, ex);
		} // catch
	}// doGet

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(req, res);
		} catch (ParseException ex) {
			Logger.getLogger(DocterController.class.getName()).log(Level.SEVERE, null, ex);
		} // catch
	}// doPost

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
