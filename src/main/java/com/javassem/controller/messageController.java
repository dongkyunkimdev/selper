package com.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.Criteria;
import com.javassem.domain.PageMaker;
import com.javassem.domain.messageVO;
import com.javassem.service.messageService;

@Controller
@RequestMapping("/message/")
public class messageController {
	@Autowired
	private messageService messageService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/message/" + step;
	}
	
	@RequestMapping("/sendList.do")
	public void sendList(messageVO vo, Model model) {
		model.addAttribute("sendList", messageService.sendList(vo));
		System.out.println("리스트 추가");
	}
	
	@RequestMapping("/receiveList.do")
	public void receiveList(messageVO vo, Model model) throws Exception {
		model.addAttribute("receiveList", messageService.receiveList(vo));
		System.out.println("리스트 추가");
	}
	
/*	@RequestMapping("/receiveList.do")
	public void receiveListPage(Criteria cri, Model model) throws Exception {
		model.addAttribute("receiveListPage", messageService.receiveListPage(cri));
		System.out.println("리스트 추가");
	}*/
	
/*	@RequestMapping(value = "/sendList.do", method = RequestMethod.GET)
	public void sendListPage(Criteria cri, Model model) throws Exception {
		model.addAttribute("sendListPage", messageService.sendListPage(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(messageService.getMessageListCount());
		model.addAttribute("pageMaker", pageMaker);
		System.out.println("리스트 추가");
	}*/
	
	/*@RequestMapping(value = "/receiveList.do", method = RequestMethod.GET)
	public void receiveListPage(Criteria cri, Model model) throws Exception {
		model.addAttribute("receiveListPage", messageService.receiveListPage(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(messageService.getMessageListCount());
		model.addAttribute("pageMaker", pageMaker);
		System.out.println("리스트 방방");
	}*/
	
	@RequestMapping(value = "/sendView.do", method = RequestMethod.GET)
	public void sendView(@RequestParam("message_no") int message_no, Model model) {
		messageVO vo = messageService.sendView(message_no);
		sendList(vo, model);
		model.addAttribute("sendView", vo);
	}
	
	// 이거 뷰뷰ㅠ뷰뷰뷰ㅠ
	@RequestMapping(value = "/receiveView.do", method = RequestMethod.GET)
	public void receiveView(@RequestParam("message_no") int message_no, Model model) throws Exception {
		messageVO vo = messageService.receiveView(message_no);
		receiveList(vo, model);
		model.addAttribute("receiveView", vo);
		messageService.count(message_no);
	}
	
	@RequestMapping("/send.do")
	public ModelAndView sendMessage(messageVO vo) throws IOException {
		messageService.sendMessage(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("message/send_ok");
		
		return mv;
	}
	
	@RequestMapping("/deleteMessage.do")
	public ModelAndView deleteMessage(@RequestParam("message_no") int message_no, 
			@RequestParam("del") int del) {
		messageService.deleteMessage(message_no);
		ModelAndView mv = new ModelAndView();
		if(del == 1){
			mv.setViewName("message/receiveList");
		}else if(del == 2){
			mv.setViewName("message/sendList");
		}
		
		return mv;
	}

	


	
}
