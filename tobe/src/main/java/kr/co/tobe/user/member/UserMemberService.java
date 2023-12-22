package kr.co.tobe.user.member;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.MemberVO;

public interface UserMemberService {
	boolean dupId(String id);
	boolean regist(MemberVO vo);
	MemberVO login(MemberVO vo);
	MemberVO detail(MemberVO vo);
	int update(MemberVO vo);
	MemberVO pwdCheck(MemberVO mvo);
	int quit(MemberVO mvo);
	//
	MemberVO findId(MemberVO vo);

	
	
}
