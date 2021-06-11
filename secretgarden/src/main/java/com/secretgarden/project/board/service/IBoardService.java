package com.secretgarden.project.board.service;

import java.util.List;

import com.secretgarden.project.board.domain.BoardAttachDTO;
import com.secretgarden.project.board.domain.BoardDTO;
import com.secretgarden.project.board.domain.Criteria;

public interface IBoardService {
	public void register(BoardDTO bDto) throws Exception;
	// 글번호 넘겨줌
	public BoardDTO read(Integer bno) throws Exception;
	public boolean modify(BoardDTO bDto) throws Exception;
	public boolean remove(Integer bno) throws Exception;
	public List<BoardDTO> listAll(Criteria cri) throws Exception;
	public int getTotalCnt(Criteria cri) throws Exception;
	public List<BoardAttachDTO> getAttachList(int bno);
	
}
