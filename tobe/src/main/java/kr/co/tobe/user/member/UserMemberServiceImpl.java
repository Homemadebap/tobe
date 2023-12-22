package kr.co.tobe.user.member;

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
	
	//
	@Override
	public MemberVO findId(MemberVO vo) {
		return mapper.findId(vo);
	}

	
}
