package kr.co.tobe.user.pay;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.BasketVO;
import kr.co.tobe.vo.PayDetailVO;
import kr.co.tobe.vo.PayVO;

@Mapper
public interface UserPayMapper {
	Map<String, Object> payDetailIndex(int detail_no);
	int payCancel(Map<String, Object> cancelReasonMap);
	Map<String, Object> payCancelDetailIndex(int detail_no);

	List<Map> list(int no);	//목록 가져올 것 	
	int count (int no);
	
	List<BasketVO> getCart(String cartNo);
	Map<String, Object> CartMap(int cart_no);
	
	int pay(PayVO vo);
	int payDetail(PayDetailVO vo);
	
	List<Map<String, Object>> getorder(Map map);
	
}
