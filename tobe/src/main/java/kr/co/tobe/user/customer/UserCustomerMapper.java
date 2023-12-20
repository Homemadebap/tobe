package kr.co.tobe.user.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Mapper
public interface UserCustomerMapper {

	//qna
	int insert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(QnaVO vo);
	int updateGno(int no);
	
	int count(QnaVO vo);
	List<QnaVO> list(QnaVO vo);
	
	//notice
	int noticeInsert(NoticeVO vo);
	int noticeCount(NoticeVO vo);
	List<NoticeVO> list(NoticeVO vo);
	

}
