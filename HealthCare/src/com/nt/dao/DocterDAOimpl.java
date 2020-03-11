package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.nt.bo.PersonBo;
import com.nt.dto.PersonDto;

public class DocterDAOimpl implements PersonDAO {

	private static final String Person_Reg_Queary = "INSERT INTO paitent VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	private static final String log = "Select email,pass,gender from baraat where email=?";
	private static final String forget = "Select pass from baraat where email=?";
	private static final String delete = "delete  baraat where email=? and pass=?";
	private static final String updatepass = "update baraat set pass=?   where pass=? and email=?";
	private static final String update = "update baraat set name=?,adds=?,mnumber=?  where   pass=? and email=?";
	HttpSession ses = null;

	private Connection getPooledConnection() throws Exception {
		InitialContext ic = null; // initaial context is child of Context
		DataSource ds = null;
		Connection con = null;
		// get DataSource obj from Jndi registry
		ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:/comp/env/DsJndi");
		con = ds.getConnection();
		return con;
	}

	@Override
	public int register(PersonBo bo) throws Exception {
		Connection con = null;

		PreparedStatement ps = null;
		int result = 0;

		// get PooledConnection object
		con = getPooledConnection();
		ps = con.prepareStatement(Person_Reg_Queary);

		// System.out.println("Dao" + bo.getCid());
		SimpleDateFormat sdf = null;
		java.sql.Date sqdob = null, sqdoj = null;
		long ms = 0;
		Date udob = null;

		// convert strin date into java sql.Date class obj
		sdf = new SimpleDateFormat("dd-MM-yyyy");
		if (sdf != null)

			// udob = sdf.parse(bo.getDob()); // gives java.util.Date obj
			if (udob != null)
				ms = udob.getTime();
		sqdob = new java.sql.Date(ms);
		// gives java.sql.Date class
		System.out.println("Reg=Dao1");
		ps.setString(1, bo.getFirstname());
		ps.setString(2, bo.getLastname());
		ps.setString(3, bo.getGender());
		ps.setString(4, bo.getPassword());
		ps.setString(5, bo.getGender());
		ps.setDate(6, sqdob);
		ps.setInt(7, bo.getIncome());
		ps.setString(8, bo.getAdds());
		ps.setString(9, bo.getState());
		ps.setString(10, bo.getCountry());
		ps.setString(11, bo.getMno());
		System.out.println("Reg=Dao1");
		// execute qry and gather result
		result = ps.executeUpdate();
		// return rsult to service
		return result;
	}

	@Override
	public PersonBo readUser(String email, String pass) throws Exception {
		PersonBo bo = null;
		Connection con = null;
		boolean fg = false;
		PreparedStatement ps = null;
		ResultSet rs = null;
		con = getPooledConnection();
		ps = con.prepareStatement(log);

		System.out.println("===logg(DAO)=====");
		System.out.println("email=" + email);
		System.out.println("pass=" + pass);
		ps.setString(1, email);
		// ps.setString(2, pass);
		rs = ps.executeQuery();
		while (rs.next()) {
			// if(fg==true)
			bo = new PersonBo();
			// bo.setDob(rs.getDate(3));
			bo.setEmail(rs.getString("email"));
			bo.setPassword(rs.getString("pass"));
			bo.setGender(rs.getString("gender"));
			String s = (rs.getString("gender"));
			System.out.println("Gender in dao class=" + s);
		}
		return bo;
		// service=new EcomDAOimpl(
	}

	@Override
	public int deletuser(PersonBo bo) throws Exception {

		PersonDto dto = null;
		Connection con = null;
		PreparedStatement ps = null;
		int resdelete = 0;

		con = getPooledConnection();
		ps = con.prepareStatement(delete);
		ps.setString(1, bo.getEmail());
		ps.setString(2, bo.getPassword());

		// execute wuery and gather result;
		resdelete = ps.executeUpdate();
		// return result to serivice clss
		return resdelete;
	}

	@Override
	public int upuser(PersonBo bo) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;

		// get PooledConnection object
		con = getPooledConnection();
		ps = con.prepareStatement(update);

		// set param values

		ps.setString(4, bo.getPassword());
		ps.setString(5, bo.getEmail());
		// execute qry nd gather result
		result = ps.executeUpdate();
		// return result to service class
		return result;
	}

	@Override
	public int passUpdate(PersonBo bo) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		int respass = 0;

		// get PooledConnection object
		con = getPooledConnection();
		ps = con.prepareStatement(updatepass);

		// set param values
		ps.setString(2, bo.getPassword());
		ps.setString(3, bo.getEmail());

		// execute qry nd gather result
		respass = ps.executeUpdate();
		// return result to service class
		return respass;

	}

	@Override
	public PersonBo forgetUser(String email) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		int respass = 0;
		PersonBo bo = null;
		// get PooledConnection object
		con = getPooledConnection();
		System.out.println("forget email=" + email);
		ps = con.prepareStatement(forget);
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			bo = new PersonBo();
			bo.setPassword(rs.getString("pass"));
			// 2nd step)compose message
			System.out.println("pwd=");

		} // while
		return bo;
	}// method
}// class