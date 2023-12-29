package kr.co.tobe.user.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Mapper
public interface UserCustomerMapper {

	//qna
	int insert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(QnaVO vo);
	//int updateGno(int no);
	
	int qnaCount(QnaVO vo);
	List<QnaVO> qnaList(QnaVO vo);
	QnaVO qnaDetail(int no);
	
	
	//notice
	int noticeInsert(NoticeVO vo);
	int noticeCount(NoticeVO vo);
	List<NoticeVO> noticeList(NoticeVO vo);
	//상세페이지
	NoticeVO detail(int no);
	
	//faq
	int faqCount(FaqVO vo);
	List<FaqVO> faqList(FaqVO vo);


}
