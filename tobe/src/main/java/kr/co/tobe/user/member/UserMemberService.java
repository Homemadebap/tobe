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
	
//	// 마이페이지 - 사용자 이름 가져오기
//	String myName(MemberVO mvo);
//	// 마이페이지 - 포인트 가져오기
//	int myPoint(MemberVO mvo);
	
	// 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	List<Map<String, Object>> currentCourseIndex(MemberVO mvo);
	// 마이페이지 - 수강신청 내역 뽑아오기
	List<Map<String, Object>> pastCourseIndex(MemberVO mvo);
	// 마이페이지 - 나의후기 내역 뽑아오기
	List<Map<String, Object>> myCourseAskIndex(MemberVO mvo);
	// 마이페이지 - 나의문의 내역 뽑아오기
	List<Map<String, Object>> myReviewIndex(MemberVO mvo);
}
