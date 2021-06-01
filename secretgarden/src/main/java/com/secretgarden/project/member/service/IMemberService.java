package com.secretgarden.project.member.service;

import com.secretgarden.project.member.domain.MemberDTO;

public interface IMemberService {
	public MemberDTO login(MemberDTO mDto);
	public void insertMember(MemberDTO mDto) throws Exception;

}
	