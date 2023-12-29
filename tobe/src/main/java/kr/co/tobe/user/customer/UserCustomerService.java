package kr.co.tobe.user.customer;

import java.util.Map;

import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

public interface UserCustomerService {
	//qna
	Map<String, Object> qnaList(QnaVO vo);
	
	int qnaInsert(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaUpdate(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaDelete(QnaVO vo);//, HttpServletRequest request);
	QnaVO qnaDetail(QnaVO vo);
	//notice
	Map<String, Object> noticeList(NoticeVO vo);
	
	int noticeInsert (NoticeVO vo);
	NoticeVO noticeDetail(NoticeVO vo);
	
	//faq
	Map<String, Object> faqList(FaqVO vo);
	
	
	QnaVO view(QnaVO vo, boolean isUpdate);
	
	
}
