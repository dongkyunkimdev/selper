package com.javassem.dao;

import java.util.List;

import com.javassem.domain.BoardVO;
import com.javassem.domain.Criteria;
import com.javassem.domain.SearchCriteria;


public interface BoardDAO {
 //게시글 목록
 public List<BoardVO> list() throws Exception;
 
//게시물 작성
 public void write(BoardVO vo) throws Exception;
 
//게시물 조회
 public BoardVO view(int BOARD_NO) throws Exception;
 
//게시물 수정
public void modify(BoardVO vo) throws Exception;

//게시뮬 삭제
public void delete(int bno) throws Exception;
//게시물 총 갯수
//public int count() throws Exception;
public int listCount() throws Exception;
//게시물 목록 + 페이징
public List<BoardVO> listPage(Criteria cri) throws Exception;

//게시물 목록 + 페이징 + 검색
public List<BoardVO> listSearch(SearchCriteria scri) throws Exception;

//검색 결과 갯수
public int countSearch(SearchCriteria scri) throws Exception;

}