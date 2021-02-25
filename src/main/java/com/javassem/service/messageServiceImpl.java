package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.messageDAOImp;
import com.javassem.domain.Criteria;
import com.javassem.domain.messageVO;

@Service("messageService")
public class messageServiceImpl implements messageService{
	@Autowired
	private messageDAOImp messageDAO;
	
	public int sendMessage(messageVO vo){
		return messageDAO.send_Message(vo);
	}
	
	public int deleteMessage(int message_no) {
		return messageDAO.deleteMessage(message_no);
	}
	
	public messageVO receiveView(int message_no) throws Exception{
//		messageDAO.count(message_no);
		return messageDAO.receiveView(message_no);
	}
	
	public messageVO sendView(int message_no){
		return messageDAO.sendView(message_no);
	}
	
	public List<messageVO> sendList(messageVO vo) {
		return messageDAO.sendList(vo);
	}
	
	public List<messageVO> receiveList(messageVO vo) {
		return messageDAO.receiveList(vo);
	}
	
	public List<messageVO> sendListPage(Criteria cri) throws Exception {
		return messageDAO.sendListPage(cri);
	}
	
	public List<messageVO> receiveListPage(Criteria cri) throws Exception {
		return messageDAO.receiveListPage(cri);
	}
	
	public int getMessageListCount() throws Exception{
		return messageDAO.getMessageListCount();
	}

	public void count(int message_no) throws Exception {
		messageDAO.count(message_no);
	}

	
	

}
