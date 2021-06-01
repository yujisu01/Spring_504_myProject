package com.secretgarden.project.member.mapper;

import com.secretgarden.project.member.domain.MemberDTO;

public interface MemberMapper {
	public MemberDTO login(MemberDTO mDto);
	public void insertMember(MemberDTO mDto);

}