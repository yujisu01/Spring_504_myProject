package com.secretgarden.project.board.service.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secretgarden.project.board.mapper.bookMemberMapper;
import com.secretgarden.project.board.service.IBookMemberService;
import com.secretgarden.project.domain.BookMemberDTO;
import com.secretgarden.project.persistence.IBookMemberDAO;

@Service
public class BookMemberServiceImpl implements IBookMemberService{
	
	@Autowired
	private bookMemberMapper mapper;
	@Autowired
	private IBookMemberDAO bDao;

	@Override
	public void insertBookMem(BookMemberDTO bDto) throws Exception {
		mapper.insertBookMem(bDto);
	}

	@Override
	public BookMemberDTO mybook(@Param("emailfield") String emailfield, @Param("pwfield") String pwfield) throws Exception {
		return mapper.mybook(emailfield, pwfield);
	}

	@Override
	public int deleteBookMem(String emailfield) throws Exception {
		return mapper.deleteBookMem(emailfield);
	}

}
