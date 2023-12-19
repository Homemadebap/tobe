package kr.co.tobe.user.customer;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Mapper
public interface UserCustomerMapper {

	int insert(NoticeVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(int no);
	int qnaInsert(QnaVO vo);
	int updateGno(int no);

}
