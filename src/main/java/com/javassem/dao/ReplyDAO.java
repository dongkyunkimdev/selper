package com.javassem.dao;

import java.util.List;

import com.javassem.domain.ReplyVO;

public interface ReplyDAO {
	// 댓글 조회
	public List<ReplyVO> list(int BOARD_NO) throws Exception;
	// 댓글 조회
	public void write(ReplyVO vo) throws Exception;

	//댓글 삭제
	public void delete(int COMMENT_NO, int num) throws Exception;
}
