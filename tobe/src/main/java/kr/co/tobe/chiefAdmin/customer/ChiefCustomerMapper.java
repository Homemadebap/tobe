package kr.co.tobe.chiefAdmin.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

@Mapper
public interface ChiefCustomerMapper {
	public int insert(NoticeVO vo);
	public int faqinsert(FaqVO vo);

//	public int count(NoticeVO vo);
//	List<NoticeVO> list(NoticeVO vo);
	NoticeVO NoticeDetail(int noticeNo);
	List<NoticeVO> getlist(NoticeVO vo);	
	
	QnaVO QnaDetail(int qnaNo);
	List<QnaVO> getqnalist(QnaVO vo);

	public List<FaqVO> getfaqlist(FaqVO vo);	
}
