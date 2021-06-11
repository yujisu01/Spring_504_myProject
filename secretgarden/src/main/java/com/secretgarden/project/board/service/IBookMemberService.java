package com.secretgarden.project.board.service;

import com.secretgarden.project.domain.BookMemberDTO;

public interface IBookMemberService {
	public void insertBookMem(BookMemberDTO bDto) throws Exception;
	public BookMemberDTO mybook(String emailfield, String pwfield) throws Exception;
	public int deleteBookMem (String emailfield) throws Exception;

}
