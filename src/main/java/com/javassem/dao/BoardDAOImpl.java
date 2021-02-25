package com.javassem.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javassem.domain.BoardVO;
import com.javassem.domain.Criteria;
import com.javassem.domain.SearchCriteria;


@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;

	private static String namespace = "com.javassem.mappers.board";

	@Override
	public List<BoardVO> list() throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList(namespace + ".list");
	}

	@Override
	public void write(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sql.insert(namespace + ".write", vo);
	}

	// 게시물 조회
	public BoardVO view(int BOARD_NO) throws Exception {

		return sql.selectOne(namespace + ".view", BOARD_NO);
	}

	// 게시물 수정
	@Override
	public void modify(BoardVO vo) throws Exception {
		sql.update(namespace + ".modify", vo);
	}

	// 게시물 삭제
	public void delete(int BOARD_NO) throws Exception {
		sql.delete(namespace + ".delete", BOARD_NO);
	}

	// 게시물 총 갯수
	@Override
	public int listCount() throws Exception {
		return sql.selectOne(namespace + ".listCount");
	}

	// 게시물 목록 + 페이징
	@Override
	public List<BoardVO> listPage(Criteria cri) throws Exception {
		return sql.selectList(namespace + ".listPage", cri);
	}

	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<BoardVO> listSearch(SearchCriteria scri) throws Exception {
		return sql.selectList(namespace + ".listSearch", scri);
	}

	@Override
	public int countSearch(SearchCriteria scri) throws Exception{
		return sql.selectOne(namespace+".countSearch",scri);
	}

}
