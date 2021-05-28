package com.secretgarden.project.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.secretgarden.project.board.mapper.reservationMapper;
import com.secretgarden.project.board.service.IReservationService;
import com.secretgarden.project.domain.ReservationDTO;
import com.secretgarden.project.persistence.IReservationDAO;
@Service
public class ReservationServiceImpl implements IReservationService{

	@Autowired
	private reservationMapper mapper;
	@Autowired
	private IReservationDAO rDao;
	
	@Override
	public List<ReservationDTO> reservationList(ReservationDTO rDto) throws Exception {
		return mapper.listAll(rDto);
	}

}
