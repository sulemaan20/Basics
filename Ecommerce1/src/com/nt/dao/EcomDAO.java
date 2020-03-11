package com.nt.dao;

import java.util.List;

import com.nt.bo.CustomerBo;
import com.nt.dto.CustomerDto;

public interface EcomDAO {
	public int createUser(CustomerBo bo) throws Exception;
	public CustomerBo readUser(String email,String pass) throws Exception;
	public List<CustomerBo> list()throws Exception;
	public int deletuser(int cid)throws Exception;
	public int upuser(CustomerBo bo)throws Exception;


}
