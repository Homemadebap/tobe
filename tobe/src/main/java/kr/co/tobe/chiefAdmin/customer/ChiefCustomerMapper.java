package kr.co.tobe.chiefAdmin.customer;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;

@Mapper
public interface ChiefCustomerMapper {
	public int insert(NoticeVO vo);
	public int faqinsert(FaqVO vo);

	public int count(NoticeVO vo);
	List<NoticeVO> list(NoticeVO vo);
}
