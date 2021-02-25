package com.javassem.dao;

import java.util.List;

import com.javassem.domain.Criteria;
import com.javassem.domain.messageVO;

public interface messageDAO {
	// 쪽지 보내기
	int send_Message(messageVO vo);
	// 받은 쪽지 삭제하기
	int deleteMessage(int message_no);
	// 보낸 쪽지
	List<messageVO> sendList(messageVO vo);
	// 받은 쪽지
	List<messageVO> receiveList(messageVO vo);
	// 보낸 쪽지 내용 확인하기
	messageVO receiveView(int message_no);
	//받은 쪽지 내용 확인하기 
	messageVO sendView(int message_no);
	// 받은 목록 + 페이징
	List<messageVO> sendListPage(Criteria cri) throws Exception;
	// 보낸 목록 + 페이징
	List<messageVO> receiveListPage(Criteria cri) throws Exception;
	// 쪽지 총 개수
	public int getMessageListCount() throws Exception;
	// 쪽지 수신여부
	public void count(int message_no) throws Exception;
	
}
