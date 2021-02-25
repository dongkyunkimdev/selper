package com.javassem.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javassem.dao.ReplyDAO;
import com.javassem.domain.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Inject
	private ReplyDAO dao;

	// 댓글 조회
	@Override
	public List<ReplyVO> list(int BOARD_NO) throws Exception {
	    return dao.list(BOARD_NO);
	}
	// 댓글 작성
	@Override
	public void write(ReplyVO vo) throws Exception {
	    dao.write(vo);
	}
	// 게시물 삭제
		public void delete(int COMMENT_NO,int num) throws Exception {
			dao.delete(COMMENT_NO, num);
		}
	
}
