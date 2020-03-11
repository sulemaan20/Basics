package com.nt.service;

import java.util.List;

import javax.servlet.RequestDispatcher;

import com.nt.bo.PersonBo;
import com.nt.dao.PersonDAO;
import com.nt.dao.PersonDAOimpl;
import com.nt.dto.PersonDto;

public class PersonServiceimpl implements PersonService {

	@Override
	public String register(PersonDto dto) throws Exception {
		int count = 0;
		PersonDAO dao = null;
		PersonBo bo = null;
		// System.out.println("Date="+dto.getDob());
		// System.out.println("create service="+dto.getCid());
		RequestDispatcher rd = null;
		// Convert DTO to BO
		bo = new PersonBo();
		System.out.println("Reg=Service1");
		bo.setFirstname(dto.getFirstname());
		bo.setLastname(dto.getLastname());
		bo.setGender(dto.getGender());
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());
		bo.setAdds(dto.getAdds());
		bo.setState(dto.getState());
		bo.setCountry(dto.getCountry());
		bo.setIncome(dto.getIncome());
		bo.setDob(dto.getDob());
		bo.setMno(dto.getMno());

		//bo.setFile(dto.getFile());
		System.out.println("Reg=Service2");
		// use dAO
		dao = new PersonDAOimpl();
		count = dao.register(bo);
		// process the result
		if (count == 0)
			return "registration Failed";
		else
			// rd=req.RequestDispatcher();
			return "registration Succded";
	}

	@Override
	public PersonDto readUser(String email, String pass) throws Exception {
		PersonDAO dao = new PersonDAOimpl();
		PersonDto dto = null;
		PersonBo bo = null;
		System.out.println("===logg(Service--before)=====");
		System.out.println("email=" + email);
		System.out.println("pass=" + pass);
		try {
			// use dao method
			bo = dao.readUser(email, pass);

			// resultset data retrievefrom data base and pass to dto obj
			dto = new PersonDto();
			dto.setEmail(bo.getEmail());
			dto.setPassword(bo.getPassword());
			dto.setGender(bo.getGender());

			System.out.println("===logg(Service--after)=====");
			System.out.println("email=" + dto.getEmail());
			System.out.println("pass=" + dto.getPassword());
			System.out.println("Gender=" + dto.getGender());
			return dto;
		} catch (NullPointerException nfe) {
			return dto;
		}
	}

	@Override
	public String deletuser(PersonDto dto) throws Exception {
		PersonBo bo = null;
		PersonDAO dao = null;
		int resdelete = 0;

		bo = new PersonBo();
		dao = new PersonDAOimpl();
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());

		// use dao class
		resdelete = dao.deletuser(bo);

		if (resdelete == 0)
			return "Deletion Failed";
		else
			return "Record Successfully deleted";
	}

	@Override
	public String upuser(PersonDto dto) throws Exception {
		int count = 0;
		PersonBo bo = null;
		PersonDAO dao = null;
		bo = new PersonBo();
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());

		// use dao
		dao = new PersonDAOimpl();
		count = dao.register(bo);

		// gather result
		if (count == 0)
			return "Updation Failed";
		else
			// rd=req.RequestDispatcher();
			return "Updation Succded";
	}

	@Override
	public String uppass(PersonDto dto) throws Exception {
		int respass = 0;
		PersonBo bo = null;
		PersonDAO dao = null;

		bo = new PersonBo();
		bo.setEmail(dto.getEmail());
		bo.setPassword(dto.getPassword());

		// use dao
		dao = new PersonDAOimpl();
		respass = dao.passUpdate(bo);

		// gather result
		if (respass == 0)
			return "Updation Failed";
		else
			// rd=req.RequestDispatcher();
			return "Update Password";
	}

	@Override
	public PersonDto forgetUser(String email) throws Exception {
		PersonDAO pdao = null;
		PersonDto dto = new PersonDto();
		pdao = new PersonDAOimpl();
		PersonBo bo = new PersonBo();
		// use dao clss
		try {
			System.out.println("===forget(Service--before)=====");
			bo = pdao.forgetUser(email); // forword to dao cls

			// after geting data
			dto.setPassword(bo.getPassword());
			// dto.setEmail(bo.getEmail());

			System.out.println("===forget(Service--after)=====");
			// System.out.println("email=" + dto.getEmail());
			System.out.println("pass=" + dto.getPassword());
			return dto;
		} catch (NullPointerException e) {
			return dto;
		} // catcht

	}// method

}// class
