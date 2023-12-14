package kr.co.tobe.user.customer;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.NoticeVO;

@Mapper
public interface UserCustomerMapper {

		int insert(NoticeVO vo);

}
