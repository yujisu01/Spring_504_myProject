package com.secretgarden.project;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.secretgarden.project.domain.ReservationDTO;
import com.secretgarden.project.persistence.IReservationDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class IReservationDAOTest {

	private static final Logger logger = LoggerFactory.getLogger(IReservationDAOTest.class);
	
	@Autowired
	private IReservationDAO rDao;
	
	@Test
	public void testRead() throws Exception{
		//logger.info(rDao.listAll().toString());
		List<ReservationDTO> list = rDao.listAll();
		list.forEach(reservation -> logger.info(reservation.getBookno() + reservation.getBookroom()));
	}

}
