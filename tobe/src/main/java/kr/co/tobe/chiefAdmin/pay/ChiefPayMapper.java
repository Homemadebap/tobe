package kr.co.tobe.chiefAdmin.pay;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ChiefPayMapper {
	List<Map> getlist();
}
