package com.nt.service;

import java.util.List;

import com.nt.dto.CustomerDto;

public interface EcomService {
	public String createUser(CustomerDto dto)throws Exception;
	public CustomerDto readUser(String email,String pass)throws Exception;
	public List<CustomerDto> list()throws Exception;
	public String deletuser(CustomerDto dto)throws Exception;
	public String upuser(CustomerDto dto)throws Exception;

}
