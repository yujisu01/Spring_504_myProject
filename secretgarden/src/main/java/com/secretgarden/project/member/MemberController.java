package com.secretgarden.project.member;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.secretgarden.project.member.domain.MemberDTO;
import com.secretgarden.project.member.service.IMemberService;

@Controller
@RequestMapping("/secretgarden/member")
public class MemberController {
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private IMemberService service;
	
	@GetMapping("/login")
		// login.jsp생성해야함
	public void loginGET(@ModelAttribute("mDto") MemberDTO mDto) {
		
		
	}
	@PostMapping("/loginPost")
		// 반환할떄 사용할객체(model)
	public String loginPOST(MemberDTO mDto, HttpSession session, Model model) throws Exception {
		String returnURL = "";
		MemberDTO memInfo = service.login(mDto);
		log.info("memInfo ===> " + memInfo);
		
		if(memInfo == null) {
			return "redirect:/secretgarden/member/login";
		}
		model.addAttribute("memInfo",memInfo);
		
		return returnURL;
	}
	
//	@RequestMapping(value = "/loginPost",method = RequestMethod.POST)
//	public void loginPOST(MemberDTO mDto, HttpSession session, Model model) throws Exception{
//		//String returnURL = "";
//		MemberDTO memInfo = service.login(mDto);
//		if(memInfo == null || !BCrypt.checkpw(mDto.getUserpw(), mDto.getUserpw())) {
//			
//			return;
//		}
//		model.addAttribute("memInfo",memInfo);
//	}
			
	
	@GetMapping("/logout")
		// 세션날리고 메인페이지로 보내면됨
		// 세션객체롤 넘겨받기위해서 주입
	public String logout(HttpSession session) {
		log.info("logout.............................");
		
		session.getAttribute("login");
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			session.removeAttribute("login");
			session.invalidate();
		}
			// 개인프로젝트에는 main으로 꽂아야함.
		return "redirect:/secretgarden/main";
	}
	
	@GetMapping("/insertMember")
	public void insertMemberGET(MemberDTO mDto, Model model) {
		log.info("insertMember..........................");
		
		
		//return "insertMember";
	
	}
	@PostMapping("/insertMemberPost")
	public String insertMemberPOST(MemberDTO mDto, Model model,RedirectAttributes rttr) throws Exception{
//		String hashedPw =  BCrypt.hashpw(mDto.getUserpw(), BCrypt.gensalt());
//		mDto.setUserpw(hashedPw);
//		service.insertMember(mDto);
//		log.info("userid...............->" + mDto.getUserid());
//		rttr.addFlashAttribute("message","성공");
//		log.info("post insertMember.......................");
//		
//		return "redirect:/secretgarden/member/login";
		
		log.info("post insertMember.............");
		log.info("member.toString...............->" + mDto.toString());
		service.insertMember(mDto);
		rttr.addFlashAttribute("message","회원가입 성공");
		
		return "redirect:/secretgarden/member/login";
		
	}
	
	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)
	public String profile(HttpSession session, Model model, MemberDTO mDto) throws Exception{
		Object obj = session.getAttribute("login");
		mDto = (MemberDTO) obj;
		String userid = mDto.getUserid();
		
		model.addAttribute(userid);
		return null;
	
	
	}
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypage(String userid, Model model, HttpSession session) throws Exception {
		log.info("userid===>"+ userid);
		//model.addAttribute("mDto",service.mypage(userid));
	}

}
