package com.nt.service;

import java.util.List;

import com.nt.bo.CustomerBo;
import com.nt.dao.EcomDAO;
import com.nt.dao.EcomDAOimpl;
import com.nt.dto.CustomerDto;

public class EcomServiceimpl implements EcomService {

	@Override
	public String createUser(CustomerDto dto) throws Exception{
		int count = 0;
		EcomDAO dao=null;
		CustomerBo bo = null;
		System.out.println("Date="+dto.getDob());
		System.out.println("create service="+dto.getCid());
		bo=new CustomerBo();
		bo.setCid(dto.getCid());
		bo.setFname(dto.getFname());
		bo.setLname(dto.getLname());
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());
		bo.setDob(dto.getDob());
		bo.setGender(dto.getGender());
		bo.setMnumber(dto.getMnumber());
		//use dao
		 dao=new EcomDAOimpl();
		count=dao.createUser(bo);
		if (count == 0)
			return "registration Failed";
		else
			// rd=req.RequestDispatcher();
			return "registration Succded";
	}

	@Override
	public CustomerDto readUser(String email,String pass) throws Exception {
		EcomDAO dao = new EcomDAOimpl();
		CustomerDto dto = null;
		CustomerBo bo = null;
		System.out.println("===logg(Service--before)=====");
		System.out.println("email="+email);
		System.out.println("email="+pass);
		try {
		//use dao method
		bo = dao.readUser(email,pass);
		
		//resultset pass to dto obj
		dto = new CustomerDto();
		dto.setEmail(bo.getEmail());
		dto.setPassword(bo.getPassword());
		
		System.out.println("===logg(Service--after)=====");
		System.out.println("email="+dto.getEmail());
		System.out.println("email="+dto.getPassword());
		return dto;
		}
		catch (NullPointerException nfe) {
			return dto;
		}
	}

	@Override
	public List<CustomerDto> list() {
		
		return null;
	}

	@Override
	public String deletuser(CustomerDto dto)throws Exception {
		CustomerBo bo = null;
		
		EcomDAO dao=null;
		bo=new CustomerBo();
		bo.setCid(dto.getCid());	
		int count = 0;
		int cid=bo.getCid();
		//use dao
		dao=new EcomDAOimpl();
		count=dao.deletuser(cid);
		if (count == 0)
			return "Deletion Failed";
		else
			return "Record Successfully deleted";
	}
	@Override
	public String upuser(CustomerDto dto) throws Exception{
		CustomerBo bo=null;
		EcomDAO dao=null;
		bo=new CustomerBo();
		bo.setFname(dto.getFname());
		bo.setLname(dto.getLname());
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());
		bo.setDob(dto.getDob());
		bo.setGender(dto.getGender());
		bo.setMnumber(dto.getMnumber());
		//use dao
		int count = 0;
		dao=new EcomDAOimpl();
		count=dao.upuser(bo);
		if (count == 0)
			return "Updation Failed";
		else
			// rd=req.RequestDispatcher();
			return "Updation Succded";
	}

}
