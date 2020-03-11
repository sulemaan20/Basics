package com.nt.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.Closeable;
@WebServlet("/searchurl")
public class SearchServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
        //general settings
		PrintWriter pw=null;
		pw=res.getWriter();
		res.setContentType("text/html");
		String ss=null;
		//read from data
		ss=req.getParameter("ss");
		pw.println();
		pw.println("<h1><a href='https://www.google.co.in/search?q'="+ss+"</a>Khan Search Engine...!!</h1>");
		https://www.google.co.in/search?q=ameerpet
		
		pw.close();
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}
