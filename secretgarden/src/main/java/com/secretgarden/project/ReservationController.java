package com.secretgarden.project;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.secretgarden.project.board.service.IBookMemberService;
import com.secretgarden.project.board.service.IReservationService;
import com.secretgarden.project.domain.BookMemberDTO;
import com.secretgarden.project.domain.ReservationDTO;

@Controller
@RequestMapping("/secretgarden/")
public class ReservationController {

	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	@Autowired
	private IReservationService service;
	@Autowired
	private IBookMemberService bService;
	@Autowired
	private SqlSession sqlsSession;

	@RequestMapping(value="/reservation", method= {RequestMethod.GET})
	
	public void listAll(Model model) throws Exception{
		logger.info("예약..........................");
		List<ReservationDTO> rDtoList = service.reservationList();
		for (ReservationDTO reservationDTO : rDtoList) {
			//logger.info("reservationDTO ====>" + reservationDTO.toString());
		}
		model.addAttribute("listAll",service.reservationList());
		
	}
	@RequestMapping(value = "/reservation/reservationDetail", method=RequestMethod.GET )
	public void reservationDetail(@RequestParam("bookno") int bookno, @RequestParam("rdate") Date rdate,
									 Model model) throws Exception{
		logger.info("bookno ====>" + bookno);
		logger.info("rDate ====> " + rdate);
		model.addAttribute("rdate", rdate);
		model.addAttribute("book",service.reservationDetail(bookno));
		/* model.addAttribute("rdate", rdate); */
		
		//return "reservationDetail";
	}

//	@RequestMapping(value = "/reservation/reservationDetail", method = RequestMethod.POST)
//	public void reservationDetailPOST(@ModelAttribute BookMemberDTO bDto, Model model) throws Exception{
//		bService.insertBookMem(bDto);
//		logger.info("reservationDetail DB...............");
//		logger.info("bService============>" + bDto.toString());
//	}
	
	@RequestMapping(value = "/reservation/reservationCheck")
	public void reservationCheck() throws Exception{
		logger.info("reservationCheck...........");
		
		
	}
//	@PostMapping("/reservation/reservationCheck")
//	public void reservationDetailPost(BookMemberDTO bDto, Model model, RedirectAttributes rttr) throws Exception{
//		logger.info("reservationDetail Post...............");
//		bService.insertBookMem(bDto); 
//		logger.info("bDto==========>"+ bDto.toString());
//	
//	}
	@RequestMapping(value = "/reservation/reservationConfirm", method = RequestMethod.GET)
	public void reservationConfirm() throws Exception{
		
	}
	@PostMapping("/reservation/reservationConfirmPost")
	public String reservationConrirm(@RequestParam String rdate, @RequestParam String emailfield, @RequestParam String pwfield, BookMemberDTO bDto, Model model, RedirectAttributes rttr) throws Exception{
		
		logger.info("reservationConfirm....");
		logger.info("bDto==========>"+ bDto.toString());
		logger.info("rdate=============> " +rdate);
		bService.insertBookMem(bDto);
//		model.addAttribute("rDto",bService.mybook(emailfield, pwfield));
//		logger.info("email, pw===============>" + emailfield, pwfield);
		
		return "redirect:/secretgarden/reservation/reservationCheck";
	}
	
	@PostMapping("/reservation/reservationCancel")
	public String reservationCancel(@RequestParam("emailfield") String emailfield, @RequestParam("pwfield") String pwfield, Model model) throws Exception {
		logger.info("email,pw==========>"+emailfield + pwfield);
		BookMemberDTO result = bService.mybook(emailfield, pwfield);
		if(result != null) {
			bService.deleteBookMem(emailfield);
			return "redirect:/secretgarden/main";
		}else {
			model.addAttribute("message","비밀번호가 일치하지 않습니다.");
			//model.addAttribute("rDto",bService.mybook(emailfield, pwfield));
			return "secretgarden/reservation/reservationConfirm";
		}
		
	}
	@PostMapping("/reservation/reservationSelect")
	public String reservationSelect(@RequestParam("emailfield") String emailfield, @RequestParam("pwfield") String pwfield, Model model) throws Exception {
		BookMemberDTO result = bService.mybook(emailfield, pwfield);		
//		IBeanDAO bDao = sqlsSession.getMapper(IBeanDAO.class);
//		BeanDTO list = bDao.testRow();
//		
//		model.addAttribute("list",list);
		logger.info("result========>" + result);
		model.addAttribute("rDto", bService.mybook(emailfield, pwfield));
//		model.addAttribute("rdate", rdate);
		
		if(result != null) {
			logger.info("bookno===========>" + service.reservationDetail(result.getBookno()));
			model.addAttribute("book", service.reservationDetail(result.getBookno()));
			bService.mybook(emailfield, pwfield);
			BookMemberDTO bDto = bService.mybook(emailfield, pwfield);
			return "secretgarden/reservation/reservationSelect";
		}
		else {
			model.addAttribute("message","비밀번호가 일치하지 않습니다.");
			model.addAttribute("rDto",bService.mybook(emailfield, pwfield));
			return "secretgarden/reservation/reservationConfirm";
		}
		
//		return "secretgarden/reservation/reservationSelect";
	}
	
}