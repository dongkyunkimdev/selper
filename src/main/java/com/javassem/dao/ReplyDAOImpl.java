package com.javassem.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javassem.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	@Inject
	private SqlSession sql;

	private static String namespace = "com.javassem.mappers.reply";

	// 댓글 조회
	@Override
	public List<ReplyVO> list(int BOARD_NO) throws Exception {
	    return sql.selectList(namespace + ".replyList", BOARD_NO);
	}

	// 댓글 작성
	@Override
	public void write(ReplyVO vo) throws Exception {
	    sql.insert(namespace + ".replyWrite", vo);
	}
	// 댓글 삭제
		public void delete(int COMMENT_NO,int num ) throws Exception {
			sql.delete(namespace + ".delete", COMMENT_NO);
		}


}
