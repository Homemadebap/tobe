package kr.co.tobe.chiefAdmin.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.MemberVO;

@Mapper
public interface ChiefMemberMapper {

	MemberVO cmemberDetail(int no);
	int cmemberUpdate (MemberVO vo);
	
	int cmemberCount(MemberVO vo);
	List<MemberVO> cmemberList(MemberVO vo);
}
