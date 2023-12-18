package kr.co.tobe.user.common;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserCommonMapper {
	List<Map> list(int no);		//목록 가져올 것.. join 강좌정보: , 레벨, 요일, 시간, 강좌 금액
	int delete(int no);			//cartPk 삭제
	int count (int no);			//id별 강좌 정보 
}
