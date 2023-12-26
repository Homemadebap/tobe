package kr.co.tobe.chiefAdmin.email;

import java.util.Map;

import kr.co.tobe.vo.EmailVO;
import kr.co.tobe.vo.MemberVO;

public interface ChiefEmailService {
	Map<String, Object> memberListS(MemberVO vo);
	String memberEmail(int no);
	int sendEmail(EmailVO vo);
	Map<String, Object> emailList(EmailVO vo);
	int findMember (String email);
}
