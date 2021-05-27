package com.secretgarden.project.board.service;

import java.util.List;

import com.secretgarden.project.domain.ReservationDTO;

public interface IReservationService {
	public List<ReservationDTO> listAll(ReservationDTO rDto) throws Exception;
}
