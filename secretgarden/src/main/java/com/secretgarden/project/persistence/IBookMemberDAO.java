package com.secretgarden.project.persistence;

import com.secretgarden.project.domain.BookMemberDTO;

public interface IBookMemberDAO {
	
	public void insertBookMem(BookMemberDTO bDto) throws Exception;
	public boolean mybook(String emailfield, String pwfield) throws Exception;
	public int deleteBookMem (String emailfield) throws Exception;

}
