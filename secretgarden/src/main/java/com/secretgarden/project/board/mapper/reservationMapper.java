package com.secretgarden.project.board.mapper;

import java.util.List;

import com.secretgarden.project.domain.ReservationDTO;
import com.secretgarden.project.member.domain.MemberDTO;

public interface reservationMapper {
	public List<ReservationDTO> listAll();
	public ReservationDTO listDetail(int bookno);
}
