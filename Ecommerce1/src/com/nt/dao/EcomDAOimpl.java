package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.bo.CustomerBo;
import com.nt.dto.CustomerDto;

public class EcomDAOimpl implements EcomDAO {

	private static final String Person_Reg_Queary = "INSERT INTO ecouser VALUES(?,?,?,?,?,?,?,?)";
	private static final String log = "Select email,password from ecouser where email=? and password=?";
	private static final String delete = "delete ecouser  where cid=?";
	private static final String update = "update ecouser  set fname=?,lname=? where cid=?";

	private Connection getPooledConnection() throws Exception {
		InitialContext ic = null;
		DataSource ds = null;
		Connection con = null;
		// get DataSource obj from Jndi registry
		ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:/comp/env/DsJndi");
		con = ds.getConnection();
		return con;
	}

	@Override
	public int createUser(CustomerBo bo) throws Exception {
		Connection con = null;

		PreparedStatement ps = null;
		int result = 0;
		// get PooledConnection object
		con = getPooledConnection();
		ps = con.prepareStatement(Person_Reg_Queary);
		System.out.println("Dao" + bo.getCid());
	
		SimpleDateFormat sdf = null;
		java.sql.Date sqdob = null, sqdoj = null;
		long ms = 0;
		Date udob = null;
		// convert strin date into java sql.Date class obj
		sdf = new SimpleDateFormat("dd-MM-yyyy");
		if (sdf != null)
			udob = sdf.parse(bo.getDob()); // gives java.util.Date obj

		if (udob != null)
			ms = udob.getTime();
		sqdob = new java.sql.Date(ms);// gives java.sql.Date class

		ps.setInt(1, bo.getCid());
		ps.setString(2, bo.getFname());
		ps.setString(3, bo.getLname());
		ps.setString(4, bo.getGender());
		ps.setString(5, bo.getEmail());
		ps.setDate(6, sqdob);
		ps.setLong(7, bo.getMnumber());
		ps.setString(8, bo.getPassword());

		// execute qry and gather result
		result = ps.executeUpdate();
		// return rsult to service
		return result;
	}

	@Override
	public CustomerBo readUser(String email, String pass) throws Exception {
		CustomerBo bo=null;
		Connection con = null;
		boolean fg=false;
		PreparedStatement ps = null;
		ResultSet rs = null;
		con = getPooledConnection();
		ps = con.prepareStatement(log);

		System.out.println("===logg(DAO)=====");
		System.out.println("email="+email);
		System.out.println("email="+pass);
		ps.setString(1, email);
		ps.setString(2, pass);
		rs = ps.executeQuery();
		while (rs.next()) {
		//if(fg==true)
			bo=new CustomerBo();
			// bo.setDob(rs.getDate(3));
			bo.setEmail(rs.getString(1));
			bo.setPassword(rs.getString(2));
		}
		return bo;
			// service=new EcomDAOimpl(
	}

	@Override
	public List<CustomerBo> list() {

		return null;
	}

	@Override
	public int deletuser(int cid) throws Exception {
		CustomerBo bo = null;
		CustomerDto dto = null;
		Connection con = null;
		PreparedStatement ps = null;
		con = getPooledConnection();
		ps = con.prepareStatement(delete);
		ps.setInt(1, cid);
		// execute wuery and gather result;
		int result = ps.executeUpdate();
		// return result to serivice clss
		return result;
	}

	@Override
	public int upuser(CustomerBo bo) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		// get PooledConnection object
		con = getPooledConnection();
		ps = con.prepareStatement(update);

		// set param values
		ps.setString(1, bo.getFname());
		ps.setString(2, bo.getLname());
		ps.setString(3, bo.getEmail());
		ps.setString(4, bo.getPassword());
		ps.setString(5, bo.getGender());
		ps.setLong(6, bo.getMnumber());
		ps.setInt(7, bo.getCid());
		// execute qry nd gather result
		result = ps.executeUpdate();
		// return result to service class
		return result;
	}
}
