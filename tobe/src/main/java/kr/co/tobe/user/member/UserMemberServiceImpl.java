package kr.co.tobe.user.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.MemberVO;

@Service
public class UserMemberServiceImpl implements UserMemberService {

	@Autowired
	UserMemberMapper mapper;

	@Override
	public boolean dupId(String id) {
		return mapper.dupId(id) > 0 ? true : false;
	}

	@Override
	public boolean regist(MemberVO vo) {
		return mapper.regist(vo) > 0 ? true : false;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return mapper.login(vo);
	}

	@Override
	public MemberVO detail(MemberVO vo) {
		return mapper.detail(vo.getMember_no());
	}

	@Override
	public int update(MemberVO vo) {
		return mapper.update(vo);
	}
	
	@Override
	public MemberVO pwdCheck(MemberVO mvo) {
		return mapper.pwdCheck(mvo);
	}
	
	@Override
	public int quit(MemberVO mvo) {
		return mapper.quit(mvo);
	}
	
	@Override // 마이페이지 - 현재 수강중인 강의 목록 뽑아오기
	public List<Map<String, Object>> currentCourseIndex(MemberVO mvo) {
		return mapper.currentCourseIndex(mvo);
	}
	
	@Override // 마이페이지 - 수강신청 내역 뽑아오기
	public List<Map<String, Object>> pastCourseIndex(MemberVO mvo) {
		return mapper.pastCourseIndex(mvo);
	}
	 
	@Override // 마이페이지 - 나의후기 내역 뽑아오기
	public List<Map<String, Object>> myCourseAskIndex(MemberVO mvo) {
		return mapper.myCourseAskIndex(mvo);
	}
	
	@Override // 마이페이지 - 나의문의 내역 뽑아오기
	public List<Map<String, Object>> myReviewIndex(MemberVO mvo) {
		return mapper.myReviewIndex(mvo);
	}
	
}
