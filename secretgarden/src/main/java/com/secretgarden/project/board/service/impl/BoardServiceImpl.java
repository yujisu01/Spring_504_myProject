package com.secretgarden.project.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.secretgarden.project.board.domain.BoardAttachDTO;
import com.secretgarden.project.board.domain.BoardDTO;
import com.secretgarden.project.board.domain.Criteria;
import com.secretgarden.project.board.mapper.BoardAttachMapper;
import com.secretgarden.project.board.persistence.IBoardDAO;
import com.secretgarden.project.board.service.IBoardService;

@Service
public class BoardServiceImpl implements IBoardService{
	// 스프링이 객체를 다 준비해줌
	@Autowired
	private IBoardDAO bDao;
	
	@Autowired
	private BoardAttachMapper attachMapper;
	
	@Transactional
	@Override
	public void register(BoardDTO bDto) throws Exception {
		bDao.create(bDto);
		if(bDto.getAttachList()==null || bDto.getAttachList().size() <= 0) {
			return;
		}
		bDto.getAttachList().forEach(attach -> {
			attach.setBno(bDto.getBno());
			attachMapper.insert(attach);
		});
	}
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardDTO read(Integer bno) throws Exception {
		bDao.updateViewCnt(bno);
		return bDao.read(bno);
	}

	@Override
	public boolean modify(BoardDTO bDto) throws Exception {
		attachMapper.deleteAll(bDto.getBno());
		boolean modifyResult = bDao.update(bDto) == 1;
		
		if(modifyResult && bDto.getAttachList().size() > 0) {
			bDto.getAttachList().forEach(attach -> {
				attach.setBno(bDto.getBno());
				attachMapper.insert(attach);
			});
		}
		return modifyResult;
	}
	@Transactional
	@Override
	public boolean remove(Integer bno) throws Exception {
		
		attachMapper.deleteAll(bno);
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
	@Override
	public List<BoardAttachDTO> getAttachList(int bno) {
		return attachMapper.findByBno(bno);
	}

}
