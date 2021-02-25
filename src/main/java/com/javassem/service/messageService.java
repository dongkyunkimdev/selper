package com.javassem.service;

import java.util.List;

import com.javassem.domain.Criteria;
import com.javassem.domain.messageVO;

public interface messageService {
	//쪽지보내기
	int sendMessage(messageVO vo);
	
	//받은 쪽지 삭제
	int deleteMessage(int message_no);
	
	//보낸 쪽지 내용 확인
	messageVO receiveView(int message_no) throws Exception;
	
	//받은 쪽지 내용 확인
	messageVO sendView(int message_no);
	
	// 보낸 쪽지 목록 조회
	List<messageVO> sendList(messageVO vo);
	
	// 받은 쪽지 목록 조회
	List<messageVO> receiveList(messageVO vo);
	
	// 보낸 목록 + 페이징
	List<messageVO> sendListPage(Criteria cri) throws Exception;
	
	// 받은 목록 + 페이징
	List<messageVO> receiveListPage(Criteria cri) throws Exception;
	
	// 게시물 총 개수
	public int getMessageListCount() throws Exception;
	
	// 쪽지 수신여부
	public void count(int message_no) throws Exception;
	

}
