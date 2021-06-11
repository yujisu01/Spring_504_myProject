package com.secretgarden.project.board.mapper;

import java.util.List;

import com.secretgarden.project.board.domain.BoardAttachDTO;

public interface BoardAttachMapper {
	public void insert(BoardAttachDTO boardAttachDto);
	public void delete(String uuid);
	public List<BoardAttachDTO> findByBno(int bno);
	public void deleteAll(int bno);
	public List<BoardAttachDTO> getOldFiles();
}
