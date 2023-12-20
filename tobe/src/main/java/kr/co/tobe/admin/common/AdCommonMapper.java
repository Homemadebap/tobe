package kr.co.tobe.admin.common;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.AdminVO;


@Mapper
public interface AdCommonMapper {
	
	//로그인
	AdminVO login(AdminVO vo);

}
