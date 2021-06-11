package com.secretgarden.project.board.mapper;

import org.apache.ibatis.annotations.Param;

import com.secretgarden.project.domain.BookMemberDTO;

public interface bookMemberMapper {
	// 예약자 추가
	public void insertBookMem(BookMemberDTO bDto) throws Exception;
	// 예약내용 보기 
	public BookMemberDTO mybook(@Param("emailfield") String emailfield, @Param("pwfield") String pwfield) throws Exception;
	public int deleteBookMem (String emailfield) throws Exception;
	

}
