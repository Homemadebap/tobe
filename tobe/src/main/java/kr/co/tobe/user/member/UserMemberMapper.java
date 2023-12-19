package kr.co.tobe.user.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.MemberVO;

@Mapper
public interface UserMemberMapper {
	// 아이디 중복체크
	int dupId(String id);
	// 회원가입
	int regist(MemberVO vo);
	// 로그인
	MemberVO login(MemberVO vo);
	// 회원조회
	MemberVO detail(int no);
	// 회원수정
	int update(MemberVO vo);
	// 비밀번호 확인
	MemberVO pwdCheck(MemberVO mvo);
	// 회원탈퇴
	int quit(MemberVO mvo);

}
