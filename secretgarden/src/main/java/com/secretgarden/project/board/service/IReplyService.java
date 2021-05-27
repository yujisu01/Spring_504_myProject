package com.secretgarden.project.board.service;

import java.util.List;

import com.secretgarden.project.board.domain.Criteria;
import com.secretgarden.project.board.domain.ReplyDTO;
import com.secretgarden.project.board.domain.ReplyPageDTO;

public interface IReplyService {
	public int register(ReplyDTO replyDto);
	public ReplyDTO read(int rno);	// 댓글상세
	public int modify(ReplyDTO replyDto);
	public int remove(int rno);
	public List<ReplyDTO> getList(Criteria cri, int bno);	// 댓글리스트
	public ReplyPageDTO getListPage(Criteria cri, int bno);	// 페이지 관리

	
}
