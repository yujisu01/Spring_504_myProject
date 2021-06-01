package com.secretgarden.project;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/secretgarden/*")

public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/main", method= {RequestMethod.GET})
	public String main(Model model) {
		logger.info("main..........................");
		
		return "main";
	}
//	@RequestMapping(value = "/board/list", method = {RequestMethod.GET})
//	public String board(Model model) {
//		logger.info("list..........................");
//		
//		return "/board/list";
//	}
	@RequestMapping(value = "/login", method = {RequestMethod.GET})
	public String login(Model model) {
		logger.info("login..........................");
		
		return "login";
	}
	/*
	 * @RequestMapping(value = "/join", method = {RequestMethod.GET}) public String
	 * join(Model model) { logger.info("join..........................");
	 * 
	 * return "join"; }
	 */
//	@RequestMapping(value = "/booking", method = {RequestMethod.GET})
//	public String booking(Model model) {
//		logger.info("booking..........................");
//		
//		return "booking";
//	}
}
