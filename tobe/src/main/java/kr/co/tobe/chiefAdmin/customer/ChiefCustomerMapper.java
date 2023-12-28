package kr.co.tobe.chiefAdmin.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

@Mapper
public interface ChiefCustomerMapper {
	
	public int insert(NoticeVO vo);
	public int faqinsert(FaqVO vo);
	public int noticeCount(NoticeVO vo);

	NoticeVO NoticeDetail(int noticeNo);
	List<NoticeVO> getlist(NoticeVO vo);	
	
	//페이지처리
	List<NoticeVO> noticeList(NoticeVO vo);
	
	QnaVO QnaDetail(int qnaNo);
	List<QnaVO> getqnalist(QnaVO vo);

	public List<FaqVO> getfaqlist(FaqVO vo);	
	
	int replyInsert (QnaVO vo);
	
	
	// 상건
	int insert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(QnaVO vo);
	int updateGno(int no);
	
	int qnaCount(QnaVO vo);
	List<QnaVO> qnaList(QnaVO vo);
	QnaVO qnaDetail(int no);
	
	
	//notice
	int noticeInsert(NoticeVO vo);

	//상세페이지
	NoticeVO detail(int no);
	
	//faq
	int faqCount(FaqVO vo);
	List<FaqVO> faqList(FaqVO vo);

}
