package com.javassem.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.Criteria;
import com.javassem.domain.messageVO;

@Repository("messageDAO")
public class messageDAOImp implements messageDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
//	private SqlSession sql;
	

	@Override
	public int send_Message(messageVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis sendMessage() 호출");	
		return mybatis.insert("message.sendMessage", vo);
	}
	@Override
	public int deleteMessage(int message_no) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis deleteMessage() 호출");
		return mybatis.delete("message.deleteMessage" , message_no);
	}

	@Override
	public messageVO receiveView(int message_no) {
		return mybatis.selectOne("message.receiveView", message_no);
	}
	
	@Override
	public messageVO sendView(int message_no) {
		return mybatis.selectOne("message.sendView", message_no);
	}

	@Override
	public List<messageVO> sendList(messageVO vo) {
		System.out.println("===> Mybatis sendList() 호출");
		return mybatis.selectList("message.sendList", vo);
	}
	
	@Override
	public List<messageVO> receiveList(messageVO vo) {
		System.out.println("===> Mybatis receiveList() 호출");
		return mybatis.selectList("message.receiveList", vo);
	}
	
	@Override
	public List<messageVO> sendListPage(Criteria cri) throws Exception {
		return mybatis.selectList("message.sendListPage", cri);
		
	}
	@Override
	public List<messageVO> receiveListPage(Criteria cri) throws Exception {
		return mybatis.selectList("message.receiveListPage", cri);
		
	}
	
	@Override
	public int getMessageListCount() throws Exception {
		return mybatis.selectOne("message.getMessageListCount");
		
	}
	
	@Override
	public void count(int message_no) throws Exception {
		System.out.println("수신여부 돌아가냐?");
		mybatis.update("message.count", message_no);
	}
	
//	@Override
//	public List<messageVO> getMessageList2(messageVO vo) {
//		System.out.println("===> Mybatis getMessageList2() 호출");
//		return mybatis.selectList("message.getMessageList2", vo);
//	}
	
}
