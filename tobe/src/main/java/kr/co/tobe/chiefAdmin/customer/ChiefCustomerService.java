package kr.co.tobe.chiefAdmin.customer;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

public interface ChiefCustomerService {

	public boolean insert(NoticeVO vo);
	public boolean faqinsert(FaqVO vo);

	NoticeVO getNoticeDetail(int noticeNo);
	List<NoticeVO> getlist(NoticeVO vo);
	
	//페이지처리
	Map<String, Object> noticeList(NoticeVO vo);
	
	QnaVO getQnaDetail(int qnaNo);
	List<QnaVO> getqnalist(QnaVO vo);
	
	List<FaqVO> getfaqlist(FaqVO vo);
	
	int QnaReply (QnaVO vo);
	Map<String, Object> qnaList(QnaVO vo);
}
