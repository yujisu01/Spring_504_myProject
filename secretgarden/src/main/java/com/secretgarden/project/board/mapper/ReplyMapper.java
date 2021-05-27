package com.secretgarden.project.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.secretgarden.project.board.domain.Criteria;
import com.secretgarden.project.board.domain.ReplyDTO;

public interface ReplyMapper {
	public String getTime2();
	public int insert(ReplyDTO reply);
	public ReplyDTO read(int rno);
	public int delete(int rno);		//rno값 넘겨받음
	public int update(ReplyDTO replyDto);
	public List<ReplyDTO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") int bno
			);
	public int getCountByBno(int bno);	// 댓글 
}
