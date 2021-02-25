package com.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.MemberDAOImpl;
import com.javassem.domain.MemberVO;

@Service("mamberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOImpl memberDAO;

	/**
	 * 아이디 중복 체크하는 sql + 로그인 기능 sql
	 */
	public MemberVO idCheck_Login(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}

	/**
	 * 회원가입 sql
	 */
	public int userInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}

	@Override
	public int userUpdate(MemberVO vo) {
		return memberDAO.userUpdate(vo);
	}

	public MemberVO update_view(MemberVO vo) {
		return memberDAO.updateview(vo);
	}
}
