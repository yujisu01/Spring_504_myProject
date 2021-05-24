package com.secretgarden.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secretgarden.project.domain.BoardDTO;
import com.secretgarden.project.domain.Criteria;
import com.secretgarden.project.persistence.IBoardDAO;
import com.secretgarden.project.service.IBoardService;

@Service
public class BoardServiceImpl implements IBoardService{
	// 스프링이 객체를 다 준비해줌
	@Autowired
	private IBoardDAO bDao;
	
	@Override
	public void register(BoardDTO bDto) throws Exception {
		bDao.create(bDto);
	}

	@Override
	public BoardDTO read(Integer bno) throws Exception {
		
		return bDao.read(bno);
	}

	@Override
	public boolean modify(BoardDTO bDto) throws Exception {
		return bDao.update(bDto) == 1;
	}

	@Override
	public boolean remove(Integer bno) throws Exception {
		return bDao.delete(bno) == 1;
	}

	@Override
	public List<BoardDTO> listAll(Criteria cri) throws Exception {
		return bDao.listAll(cri);
	}

	@Override
	public int getTotalCnt(Criteria cri) throws Exception {
		return bDao.getTotalCnt(cri);
	}

}
