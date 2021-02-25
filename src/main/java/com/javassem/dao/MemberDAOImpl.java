package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("user.idCheck", vo);
	}

	@Override
	public MemberVO updateview(MemberVO vo) {
		System.out.println("===> MemberMapper udateview 호출");
		return mybatis.selectOne("user.updateview", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper userInsert() 호출");
		return mybatis.insert("user.userInsert", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return (MemberVO) mybatis.selectOne("user.idCheck", vo);
	}

	@Override
	public int userUpdate(MemberVO vo) {
		System.out.println("===> MemberMapper userUpdate 호출");
		return mybatis.update("user.userUpdate", vo);
	}

}
