package com.learntime.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.learntime.app.member.vo.MemberVo;

public interface MemberDao {
	
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo);
	//회원가입
	public int join(SqlSessionTemplate sst, MemberVo vo);
	//닉네임 중복확인
	public int nickCheck(SqlSessionTemplate sst, String nick);
	//아이디 찾기 (번호로 조회)
	public MemberVo findId(SqlSessionTemplate sst, String phone);
	//비밀번호 찾기 (아이디로 조회)
	public MemberVo findPwd(SqlSessionTemplate sst, String id);
	

}