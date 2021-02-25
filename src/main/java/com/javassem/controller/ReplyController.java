package com.javassem.controller;

import javax.inject.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javassem.domain.BoardVO;
import com.javassem.domain.ReplyVO;
import com.javassem.domain.SearchCriteria;
import com.javassem.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {

	@Inject
	private ReplyService replyService;

	

	
	// 댓글 작성
	@RequestMapping(value = "/write", method = {RequestMethod.GET,RequestMethod.POST})
	public String posttWirte(ReplyVO vo) throws Exception {
	    
	    replyService.write(vo);
	    
	    return "redirect:/board/view?BOARD_NO=" + vo.getBOARD_NO();
	}
	
	// 댓글 삭제
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public String getDelete(@RequestParam("COMMENT_NO") int COMMENT_NO,@RequestParam("num") int num) throws Exception {
		  
			replyService.delete(COMMENT_NO, num);  

		 return "redirect:/board/view?BOARD_NO=" + num;
		}
	
}
