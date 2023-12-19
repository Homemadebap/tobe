package kr.co.tobe.user.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.MemberVO;

@Service
public class UserCommonServiceImpl implements UserCommonService {

	@Autowired
	UserCommonMapper mapper;

	@Override
	public int cartDelete(int cno) {
		return mapper.delete(cno);
	}

	@Override
	public Map<String, Object> cartList(int no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",mapper.list(no) );
		map.put("total",mapper.count(no));
		return map;
	}
	
	
	@Override // 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	public List<Map<String, Object>> currentCourseIndex(MemberVO user) {
		return mapper.currentCourseIndex(user);
	}
	
	@Override // 마이페이지 - 수강신청 내역 뽑아오기
	public List<Map<String, Object>> pastCourseIndex(MemberVO user) {
		return mapper.pastCourseIndex(user);
	}
	 
	@Override // 마이페이지 - 나의후기 내역 뽑아오기
	public List<Map<String, Object>> myCourseAskIndex(MemberVO user) {
		return mapper.myCourseAskIndex(user);
	}
	
	@Override // 마이페이지 - 나의후기 내역 뽑아오기
	public List<Map<String, Object>> askIndex(MemberVO user) {
		return mapper.askIndex(user);
	}
	
	@Override // 마이페이지 - 나의문의 내역 뽑아오기
	public List<Map<String, Object>> myReviewIndex(MemberVO user) {
		return mapper.myReviewIndex(user);
	}
	
}
