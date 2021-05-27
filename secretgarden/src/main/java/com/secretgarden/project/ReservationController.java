package com.secretgarden.project;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	
	public void listAll(ReservationDTO rDto,Model model) throws Exception{
		
		logger.info("예약..........................");
		
		model.addAttribute("listAll",service.listAll(rDto));
		
		
		
	}
}