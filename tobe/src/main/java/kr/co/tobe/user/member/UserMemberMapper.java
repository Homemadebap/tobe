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
	
//	// 마이페이지 - 사용자 이름 가져오기
//	String myName(MemberVO mvo);
//	
//	// 마이페이지 - 사용자 포인트 가져오기
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
