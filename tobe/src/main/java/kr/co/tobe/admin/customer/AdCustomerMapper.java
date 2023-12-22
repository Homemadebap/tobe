package kr.co.tobe.admin.customer;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdCustomerMapper {
	
	int replyInsert (int no);
	
}
