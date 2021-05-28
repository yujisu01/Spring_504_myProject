package com.secretgarden.project.board.service;

import java.util.List;

import com.secretgarden.project.domain.ReservationDTO;

public interface IReservationService {
	public List<ReservationDTO> reservationList(ReservationDTO rDto) throws Exception;
}
