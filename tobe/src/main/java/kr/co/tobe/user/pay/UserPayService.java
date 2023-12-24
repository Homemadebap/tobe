package kr.co.tobe.user.pay;

import java.util.Map;
import java.util.List;
import kr.co.tobe.vo.BasketVO;

public interface UserPayService {

	Map<String, Object> payDetailIndex(int detail_no);
	List<BasketVO> getcart(String cartNo);
	
}
