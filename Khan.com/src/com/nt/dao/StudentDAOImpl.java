package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.bo.StudentBO;

public class StudentDAOImpl implements StudentDAO {
   private static  final String INSERT="INSERT INTO INSERT_LAYERED_STUDENT VALUES(?,?,?,?,?)";
   
	public Connection makeConnection()throws Exception{
		InitialContext ic=null;
		DataSource ds=null;
		Connection con=null;
		//create Initialcontext obj
		ic=new InitialContext();
		//get Datasource obj from jndi registry
		ds=(DataSource)ic.lookup("java:/comp/env/DsJndi");
		//get Con obj from jdbc con pool
		con=ds.getConnection();
		return con;
	}
	
	@Override
	public int insert(StudentBO bo) throws Exception {
		Connection con=null;
		PreparedStatement ps=null;
		int count=0;
		//get pooled jdbc con object
		con=makeConnection();
		//create PreparedStatement object
		ps=con.prepareStatement(INSERT);
		//set values to Query params
		ps.setInt(1, bo.getSno());
		ps.setString(2,bo.getSname());
		ps.setInt(3,bo.getTotal());
		ps.setFloat(4,bo.getAvg() );
		ps.setString(5,bo.getResult());
		//execute the Query
		count=ps.executeUpdate();
		//close jdbc objs
		ps.close();
		con.close();  //returns the jdbc con obj back to jdbc con pool
		return count;
	}

}
