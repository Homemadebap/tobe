package kr.co.tobe.chiefAdmin.email;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.EmailVO;
import kr.co.tobe.vo.MemberVO;

@Mapper
public interface ChiefEmailMapper {
	int emailInsert (EmailVO vo);
	List<EmailVO> emailList (EmailVO vo);
	String emailSelect (int no);
	int memberSelect (String email);
	int count(EmailVO vo);
	int memberCount(MemberVO vo);
	List<MemberVO> memberList(MemberVO vo);
}
