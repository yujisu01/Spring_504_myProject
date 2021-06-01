package com.secretgarden.project.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secretgarden.project.member.domain.MemberDTO;
import com.secretgarden.project.member.mapper.MemberMapper;
import com.secretgarden.project.member.service.IMemberService;

@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public MemberDTO login(MemberDTO mDto) {
		return mapper.login(mDto);
	}

}