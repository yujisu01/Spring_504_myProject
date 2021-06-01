package com.secretgarden.project.member.persistence;

import com.secretgarden.project.member.domain.MemberDTO;

public interface IMemberDAO {

	public String getTime();
	public void insertMember(MemberDTO mDto );
	public MemberDTO selMember(String userid) throws Exception;
	public MemberDTO selLoginInfo(String userid, String userpw) throws Exception;
	public int updateMember(MemberDTO mDto) throws Exception; 
	public int deleteMember(String userid) throws Exception;
}
