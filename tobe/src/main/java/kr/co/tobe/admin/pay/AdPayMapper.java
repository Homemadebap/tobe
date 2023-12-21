package kr.co.tobe.admin.pay;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdPayMapper {
	List<Map> getlist();	
}
