package kr.co.tobe.user.pay;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserPayMapper {
	
	Map<String, Object> payDetailIndex(int detail_no);
}
