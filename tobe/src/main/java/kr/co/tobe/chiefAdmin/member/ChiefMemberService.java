package kr.co.tobe.chiefAdmin.member;

import java.util.Map;

import kr.co.tobe.vo.MemberVO;

public interface ChiefMemberService {
	MemberVO detail(int no);
	int update(MemberVO vo);
	
	Map<String, Object> cmemberList(MemberVO vo);

}
