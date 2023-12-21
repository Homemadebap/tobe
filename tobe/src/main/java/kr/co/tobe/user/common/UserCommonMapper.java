package kr.co.tobe.user.common;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CalendarVO;
import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

@Mapper
public interface UserCommonMapper {
	List<Map> list(int no);		//목록 가져올 것.. join 강좌정보: , 레벨, 요일, 시간, 강좌 금액
	int delete(int no);			//cartPk 삭제
	int count (int no);			//id별 강좌 정보 
	CourseVO courseSelect (int no);
	int reviewTotal (int no);
	// 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	List<Map<String, Object>> currentCourseIndex(MemberVO user);
	// 마이페이지 - 수강신청 내역 뽑아오기
	List<Map<String, Object>> pastCourseIndex(MemberVO user);
	// 마이페이지 - 나의후기 내역 뽑아오기
	List<Map<String, Object>> myCourseAskIndex(MemberVO user);
	List<Map<String, Object>> askIndex(MemberVO user);
	// 마이페이지 - 나의문의 내역 뽑아오기
	List<Map<String, Object>> myReviewIndex(MemberVO user);
	
	List<CalendarVO> calenList();
}
