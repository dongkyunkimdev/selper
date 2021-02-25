package com.javassem.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javassem.dao.BoardDAO;
import com.javassem.domain.BoardVO;
import com.javassem.domain.Criteria;
import com.javassem.domain.PageMaker;
import com.javassem.domain.ReplyVO;
import com.javassem.domain.SearchCriteria;
import com.javassem.service.BoardService;
import com.javassem.service.ReplyService;


@Controller
@RequestMapping("/board/")
public class BoardController {
	@Inject
	BoardService service;
	
	@Inject
	private ReplyService replyService;
	//신고페이지
		@RequestMapping(value="/declaration",method=RequestMethod.GET)
		public void imsi() throws Exception{
		
		}
	
	
	
	//게시글 목록
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public void getList(Model model) throws Exception{
		List<BoardVO> list = null;
		list = service.list();
		model.addAttribute("list",list);
		
	}
	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception{
	}
	
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(BoardVO vo) throws Exception {
	   service.write(vo);
	   return "redirect:/board/listSearch";
	}
	//게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("BOARD_NO") int BOARD_NO, Model model) throws Exception {
		BoardVO vo = service.view(BOARD_NO);
		model.addAttribute("view",vo);

		// 댓글 조회
		List<ReplyVO> reply = null;
		reply = replyService.list(BOARD_NO);
		model.addAttribute("reply", reply);
		
	}

	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("BOARD_NO") int BOARD_NO, Model model) throws Exception {

	 BoardVO vo = service.view(BOARD_NO);
	   
	 model.addAttribute("view", vo);
	}
	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardVO vo) throws Exception {

	 service.modify(vo);
	   
	 return "redirect:/board/view?BOARD_NO=" + vo.getBOARD_NO();
	}
	// 게시물 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("BOARD_NO") int BOARD_NO) throws Exception {
	  
	 service.delete(BOARD_NO);  

	 return "redirect:/board/listSearch";
	}
	
	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void ListPage(Criteria cri, Model model) throws Exception {
	// logger.info("get list page");
	 List<BoardVO> list = service.listPage(cri);
	 model.addAttribute("list",list);
	 
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(cri);
	 pageMaker.setTotalCount(service.listCount());
	 model.addAttribute("pageMaker",pageMaker);
	}
	// 글 목록 + 페이징 + 검색
	@RequestMapping(value = "/listSearch", method = RequestMethod.GET)
	public void listSearch(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	//logger.info("get list search");
	 
	 List<BoardVO> list = service.listSearch(scri);
	 model.addAttribute("list", list);
	 
	 PageMaker pageMaker = new PageMaker();
	 pageMaker.setCri(scri);
	 pageMaker.setTotalCount(service.countSearch(scri));
	 model.addAttribute("pageMaker", pageMaker);
	}
	//글 조회
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void getRead(@RequestParam("board_no") int board_no,
			@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception{
		BoardVO vo = service.view(board_no);
		model.addAttribute("read",vo);
		model.addAttribute("scri",scri);
	}
	
}
