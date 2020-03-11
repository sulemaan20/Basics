package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/poolurl")
public class ConDb extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Connection con = null;
		ResultSet rs = null;
		String tabName = null;
		ResultSetMetaData rsmd = null;
		PrintWriter pw = null;
		int colCount = 0;
		Statement st = null;
		try {
			pw = res.getWriter();
			res.setContentType("text/html");

			// read from data
			tabName = req.getParameter("table");

			// register jdbc driver
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// create conn
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");

			// create stmt
			st = con.createStatement();

			// execute query
			rs = st.executeQuery("select * from " + tabName);

			// get result set mata data
			rsmd = rs.getMetaData();

			// print cols name
			colCount = rsmd.getColumnCount();

			pw.println("<h2><center>Data of Table</center></h2>");
			pw.println("<html>");
			// pw.println("<div>bgcolor='cyan'</div>");
			pw.println("<table align='center' border='1' bgcolor='pink'>");
			pw.println("<tr bgcolor='cyan'>");

			for (int i = 1; i <= colCount; i++) {
				pw.println("<th>" + rsmd.getColumnLabel(i) + "</th>");
			} // for
			pw.println("</tr>");

			// process the result set
			while (rs.next()) {
				pw.println("<tr>");
				for (int i = 1; i <= colCount; i++) {
					pw.println("<td>" + rs.getString(i) + "</td>");
				} // for
				pw.println("</tr>");
			} // while
			pw.println("</table>");
			pw.println("</html>");
			pw.println("<br><center><a href='input.html'>Home</a></center>");
		} // try

		// process the result
		catch (Exception e) {
			e.printStackTrace();
			pw.println("<html><br></html>");
			pw.println("<html><br></html>");
			pw.println("<html><center>Invalid Table name...Plz try again</html></center>");
			pw.println("<html><br></html>");
			pw.println("<br><center><a href='input.html'>Home</a></center>");
		} finally {

			try {
				if (st != null)
					st.close();
			} // try
			catch (Exception e) {
				e.printStackTrace();
			}

			try {
				if (con != null)
					con.close();
			} // try
			catch (Exception e) {
				e.printStackTrace();
			}
		}
	}// dodet

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}// do post
}// class
