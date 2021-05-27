package com.secretgarden.project.persistence.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.secretgarden.project.domain.ReservationDTO;
import com.secretgarden.project.persistence.IReservationDAO;

@Repository
public class IReservationDAOImpl implements IReservationDAO{
	@Autowired
	private SqlSession session;
	
	private static final String namespace = "com.secretgarden.project.domain.reservationMapper";
	
	@Override
	public List<ReservationDTO> listAll(ReservationDTO rDto) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList("reservationMapper.listAll");
	}

}
