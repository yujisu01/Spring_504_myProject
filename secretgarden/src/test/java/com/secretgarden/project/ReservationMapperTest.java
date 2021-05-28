package com.secretgarden.project;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.secretgarden.project.board.mapper.reservationMapper;
import com.secretgarden.project.domain.ReservationDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class ReservationMapperTest {
	private int[] bnoArr = {
			1,2,3,4,5
	};
	@Autowired
	private reservationMapper mapper;
	
	@Test
	public void testReserMapper() {
		log.info(mapper);
	}
	
	@Test
	public void testReserList() {
		List<ReservationDTO> rDto = mapper.listAll(null);
		rDto.forEach(reply -> log.info(reply));
	}

}
