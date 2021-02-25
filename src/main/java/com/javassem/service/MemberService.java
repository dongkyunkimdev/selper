package com.javassem.service;

import com.javassem.domain.MemberVO;

public interface MemberService {
	public MemberVO idCheck_Login(MemberVO vo);

	public int userInsert(MemberVO vo);

	public MemberVO update_view(MemberVO vo);

	public int userUpdate(MemberVO memberVo);
}
