package kr.co.tobe.user.pay;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.BasketVO;

@Mapper
public interface UserPayMapper {
	Map<String, Object> payDetailIndex(int detail_no);
	int payCancel(Map<String, Object> cancelReasonMap);
	Map<String, Object> payCancelDetailIndex(int detail_no);

	List<Map> list(int no);	//목록 가져올 것 	
	int count (int no);
	
	List<BasketVO> getCart(String cartNo);
}
