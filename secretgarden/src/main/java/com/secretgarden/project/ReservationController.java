package com.secretgarden.project;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.secretgarden.project.board.service.IReservationService;
import com.secretgarden.project.domain.ReservationDTO;

@Controller
@RequestMapping("/secretgarden/")
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	@Autowired
	private IReservationService service;

	@RequestMapping(value="/reservation", method= {RequestMethod.GET})
	
	public void listAll(Model model) throws Exception{
		logger.info("예약..........................");
		List<ReservationDTO> rDtoList = service.reservationList();
		for (ReservationDTO reservationDTO : rDtoList) {
			logger.info("reservationDTO ====>" + reservationDTO.toString());
		}
		model.addAttribute("listAll",service.reservationList());
		
		
		
	}
}