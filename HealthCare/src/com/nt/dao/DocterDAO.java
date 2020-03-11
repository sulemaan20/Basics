package com.nt.dao;



import com.nt.bo.PersonBo;



public interface DocterDAO {
	public int register(PersonBo bo) throws Exception;
	public PersonBo readUser(String email,String pass) throws Exception;
	public int deletuser(PersonBo bo)throws Exception;
	public int upuser(PersonBo bo)throws Exception;
	public int passUpdate(PersonBo bo)throws Exception;
	public PersonBo forgetUser(String email) throws Exception;

}
