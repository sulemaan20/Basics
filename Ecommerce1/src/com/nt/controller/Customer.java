package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.CustomerDto;
import com.nt.service.EcomService;
import com.nt.service.EcomServiceimpl;

//@WebServlet("/user")
@WebServlet(name = "Customer", urlPatterns = { "/user" })
public class Customer extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException, ParseException {		EcomService service = null;
		String referer = req.getHeader("referer");
		//RequestDispatcher rd = req.getRequestDispatcher(referer.substring(referer.lastIndexOf("/") + 1));
		int cid = 0;
		String fname = null;
		String lname = null;
		String email = null;
		String password = null;
		String gender;
		long mno = 0;
		String dob;
		CustomerDto dto=null;
		PrintWriter pw = null;
		email = req.getParameter("email");
		password	 = req.getParameter("pass");

		RequestDispatcher rd = req.getRequestDispatcher(referer.substring(referer.lastIndexOf("/") + 1));
		try {
			if (referer.contains("registraton")) {

			pw = res.getWriter();
			res.setContentType("text/html");

			cid = Integer.parseInt(req.getParameter("cid"));
			fname = req.getParameter("fname");
			lname = req.getParameter("lname");
			dob= req.getParameter("dob");
			gender = req.getParameter("gender");
			mno = Long.parseLong(req.getParameter("mno"));

			 dto = new CustomerDto();
			dto.setCid(cid);
			dto.setFname(fname);
			dto.setLname(lname);
			dto.setEmail(email);
			dto.setDob(dob);
			dto.setGender(gender);
			dto.setMnumber(mno);
			dto.setPassword(password);
			service = new EcomServiceimpl();

			String finalResult = service.createUser(dto);
			pw.println("<h1 style='color:red;text-align:center'>" + finalResult + "</h1>");
			System.out.println("Service result");
			}
			else {
				service=new EcomServiceimpl();
				dto=new CustomerDto();
				dto=service.readUser(email, password);	
	
				System.out.println("===logg(Controller--log)=====");
				System.out.println("dto.getEmail()="+dto.getEmail());
				System.out.println("dto.getPass()="+dto.getPassword());
			
				  if(dto.getEmail()==null) {
					pw.println("<h1>Username incorrect<h1>");
					rd.include(req, res);
				}
				else if(dto.getPassword()==null) {
					pw.println("<h1>Password incorrect<h1>");
					rd.include(req, res);
				}
				else if(dto.getEmail().equals(email) && dto.getPassword().equals(password)) {
						rd=req.getRequestDispatcher("/welcome.jsp");
						rd.forward(req, res);
					}
			
				else {
					pw.println("Incorrect pwd and uname");
					rd=req.getRequestDispatcher("plog.jsp");
					rd.include(req, res);
				}
			}
			
		} // try
		catch (Exception e) {
			e.printStackTrace();
		
		}//catch
	}//processPost

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (ParseException ex) {
			Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
		}
	}//get
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
