package com.secretgarden.project.persistence;

import java.util.List;

import com.secretgarden.project.domain.ReservationDTO;

public interface IReservationDAO {
	public List<ReservationDTO> listAll() throws Exception;
	public ReservationDTO listDetail(int bookno) throws Exception;

}
