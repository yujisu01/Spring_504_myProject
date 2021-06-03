package com.secretgarden.project.member.mapper;

import com.secretgarden.project.member.domain.MemberDTO;

public interface MemberMapper {
	public MemberDTO login(MemberDTO mDto);
	public void insertMember(MemberDTO mDto) throws Exception;
	public int updateMember(MemberDTO mDto) throws Exception;
	public int deleteMember(String userid) throws Exception;
	public MemberDTO mypage(String userid) throws Exception;
}