package kr.co.tobe.admin.customer;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CqnaVO;

@Mapper
public interface AdCustomerMapper {
	
	int replyInsert (CqnaVO vo);
	
}
