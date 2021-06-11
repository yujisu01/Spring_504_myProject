package com.secretgarden.project.persistence.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secretgarden.project.domain.BookMemberDTO;
import com.secretgarden.project.persistence.IBookMemberDAO;

@Repository
public class IBookMemberDAOImpl implements IBookMemberDAO{

	@Autowired
	private SqlSession sqlsSession;
	
	private static final String namespace = "com.secretgarden.project.bookMemberMapper";
	
	@Override
	public void insertBookMem(BookMemberDTO bDto) throws Exception {
		sqlsSession.insert(namespace + ".insertBookMem",bDto);
	}

	@Override
	public boolean mybook(String emailfield, String pwfield) throws Exception {
		boolean result = false;
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put(emailfield, emailfield);
		paramMap.put(pwfield, pwfield);
		int count = sqlsSession.selectOne(namespace + ".mybook",paramMap);
		if(count == 1) result = true;
	
		return result;
	}

	@Override
	public int deleteBookMem(String emailfield) throws Exception {
		return sqlsSession.delete(namespace +".deleteBookMem", emailfield);
	}

}
