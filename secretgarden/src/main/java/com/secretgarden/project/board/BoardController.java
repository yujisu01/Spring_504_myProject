package com.secretgarden.project.board;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.secretgarden.project.board.domain.BoardAttachDTO;
import com.secretgarden.project.board.domain.BoardDTO;
import com.secretgarden.project.board.domain.Criteria;
import com.secretgarden.project.board.domain.PageDTO;
import com.secretgarden.project.board.service.IBoardService;

@Controller
@RequestMapping("/secretgarden/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private IBoardService service;
	private String uploadPath = "D:\\spring4_workspace\\secretgarden\\src\\main\\webapp\\resources\\fileUpload";
	
	@RequestMapping("/list")
	public void listAll(Criteria cri, Model model) throws Exception{
		logger.info("show allList..."+cri);
		
		model.addAttribute("list", service.listAll(cri));
		
		int total = service.getTotalCnt(cri);
		logger.info("total: " + total);
		model.addAttribute("pageMaker" , new PageDTO(cri, total));
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.GET)
	public void registerGET() {
		
		logger.info("register get...........");
	}

	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public String registerPOST(BoardDTO bDto, RedirectAttributes rttr) throws Exception {
		logger.info("register post...............");
		logger.info("/register ===>)"+bDto);
		
		logger.info("=========================================");
		if(bDto.getAttachList() != null) {
			bDto.getAttachList().forEach(attach -> logger.info(""+attach));
		}
		service.register(bDto);
		
		rttr.addFlashAttribute("result", bDto.getBno());
		
		return "redirect:/secretgarden/board/list";
	}
//	@RequestMapping(value="/read", method = RequestMethod.GET)
//	// @RequestParam어노테이션을 이용해서 input네임명인 bno를 받는다.
//	public void read(@RequestParam("bno") int bno, Model model) throws Exception{
//		// 화면에서 jsp가 받을거는 "board"
//		model.addAttribute("board", service.read(bno));
//	}
//	
//	@RequestMapping(value="/modify", method = RequestMethod.GET)
//	public void modifyGET(int bno, Model model) throws Exception{
//		model.addAttribute(service.read(bno));
//		
//		/* bDto를 넘기니까 java.lang ..set null이러면서 오류가 떴다.
//		 * BoardDTO bDto = new BoardDTO(); model.addAttribute("modify",service.modify(bDto));
//		 */
//	}
	
//	@RequestMapping(value="/modify", method = RequestMethod.POST)
//	public String modifyPOST(BoardDTO bDto, RedirectAttributes rttr) throws Exception{
//		service.modify(bDto);
//		logger.info("modify post.......");
//		
//		if(service.modify(bDto)) {
//			rttr.addFlashAttribute("result","success");
//	}
//		return "redirect:/read?bno=${board.bno}";
//		
//	}
//	
	@RequestMapping(value= {"/read","/modify"}, method=RequestMethod.GET)
	public void modifyGET(@RequestParam("bno") int bno,
						  @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		logger.info("/read or /modify....");
		model.addAttribute("board",service.read(bno));
		/* model.addAttribute("cri",cri); */
	}
	@RequestMapping(value= "/modify", method=RequestMethod.POST)
	public String modifyPOST(BoardDTO bDto,@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("/modify post...........");
		/* model.addAttribute("board",service.read(bno)); */
		
		if(service.modify(bDto)) {
			rttr.addFlashAttribute("result","완료되었습니다");
			
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		rttr.addAttribute("type",cri.getType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		return "redirect:/secretgarden/board/list";
	}
	@RequestMapping(value="/remove",method = RequestMethod.POST)
	public String removePOST(@RequestParam("bno") int bno,@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) throws Exception{
		logger.info("remove post....");
		List<BoardAttachDTO> attachList = service.getAttachList(bno);
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result","완료되었습니다.");
			deleteFiles(attachList);
		}
//		rttr.addAttribute("pageNum",cri.getPageNum());
//		rttr.addAttribute("amount",cri.getAmount());
//		rttr.addAttribute("type",cri.getType());
//		rttr.addAttribute("keyword",cri.getKeyword());
		
		return "redirect:/secretgarden/board/list" + cri.getListLink();
	}
	
	@GetMapping(value="/getAttachList",
				produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachDTO>> getAttachList(int bno){
		logger.info("getAttachList: " + bno);
		
		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);
	}
	private void deleteFiles(List<BoardAttachDTO> attachList) {
		if(attachList==null || attachList.size()==0) {
			return;
		}
		logger.info("delete attach files..........");
		logger.info(""+attachList);
		
		attachList.forEach(attach -> {
			try {
				Path file = Paths.get(uploadPath + "\\" 
									+ attach.getUploadPath() + "\\"
									+ attach.getUuid() + "_"
									+ attach.getFileName());
				Files.deleteIfExists(file);
				if(Files.probeContentType(file).startsWith("image")) {
					Path thumbnail = Paths.get(uploadPath + "\\"
							+ attach.getUploadPath() + "\\s_"
							+ attach.getUuid() + "_"
							+ attach.getFileName());
					Files.delete(thumbnail);
				}
			} catch (Exception e) {
				logger.error("delete file error : " + e.getMessage());
			}
		});
	}

	
}
