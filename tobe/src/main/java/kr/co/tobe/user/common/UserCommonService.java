package kr.co.tobe.user.common;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.tobe.vo.MemberVO;

@Service
public interface UserCommonService {
	int cartDelete(int cno); //cno= 강좌 pk
	Map<String, Object> cartList(int no);	//no = 회원 pk
	
	// 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	List<Map<String, Object>> currentCourseIndex(MemberVO user);
	// 마이페이지 - 수강신청 내역 뽑아오기
	List<Map<String, Object>> pastCourseIndex(MemberVO user);
	// 마이페이지 - 나의후기 내역 뽑아오기
	List<Map<String, Object>> myCourseAskIndex(MemberVO user);
	// 마이페이지 - 나의문의 내역 뽑아오기
	List<Map<String, Object>> myReviewIndex(MemberVO user);
}
