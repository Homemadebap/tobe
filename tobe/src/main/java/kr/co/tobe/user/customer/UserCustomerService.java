package kr.co.tobe.user.customer;

import java.util.Map;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

public interface UserCustomerService {
	//qna
	Map<String, Object> list(QnaVO vo);
	
	int qnaInsert(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaUpdate(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaDelete(QnaVO vo);//, HttpServletRequest request);
	
	//notice
	Map<String, Object> list(NoticeVO vo);
	
	int noticeInsert (NoticeVO vo);
	
}
