package com.secretgarden.project.member.persistence;

import com.secretgarden.project.member.domain.MemberDTO;

public interface IMemberDAO {

	public String getTime();
	public void insertMember(MemberDTO mDto );
	public MemberDTO selMember(String userid) throws Exception;
	public MemberDTO selLoginInfo(String userid, String userpw) throws Exception;
	public int updateMember(MemberDTO mDto) throws Exception; 
	public int deleteMember(MemberDTO mDto) throws Exception;
	public MemberDTO mypage(String userid) throws Exception;
	public int idcheck(String userid) throws Exception;
}
