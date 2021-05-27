package com.secretgarden.project;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.secretgarden.project.board.service.IReservationService;

@Controller
@RequestMapping("/secretgarden/*")
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
//	@Autowired
//	private IReservationService service;
	
	@RequestMapping(value="/reservation", method= {RequestMethod.GET})
	public String main(Model model) {
		logger.info("예약..........................");
		model.addAttribute("reservation");
		
		return "reservation";
	}
}