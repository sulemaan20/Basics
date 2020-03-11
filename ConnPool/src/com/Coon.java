package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/reg")
public class Coon extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con = getPooledConnection();
			PrintWriter pw = resp.getWriter();
			resp.setContentType("text/html");
			System.out.println("Con=" + con);
			String s = req.getParameter("n");
		
			System.out.println(s);
			pw.println("Con=");
			pw.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private Connection getPooledConnection() throws Exception {
		Connection con = null;
		DataSource ds = null;
		InitialContext ic = null;

		ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:/comp/env/DsJndi");
		con = ds.getConnection();
		return con;
	}
}
