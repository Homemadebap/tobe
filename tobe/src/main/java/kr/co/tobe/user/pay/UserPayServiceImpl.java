package kr.co.tobe.user.pay;

import java.util.Map;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.tobe.vo.BasketVO;

@Service
public class UserPayServiceImpl implements UserPayService {

	@Autowired
	UserPayMapper mapper;
	
	@Override
	public Map<String, Object> payDetailIndex(int detail_no) {
		return mapper.payDetailIndex(detail_no);
	}
	
	@Override
	public boolean payCancel(Map<String, Object> cancelReasonMap) {
		if( mapper.payCancel(cancelReasonMap)> 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public Map<String, Object> payCancelDetailIndex(int detail_no) {
		return mapper.payCancelDetailIndex(detail_no);
	}
	
	public List<BasketVO> getcart(String cartNo) {
		return mapper.getCart(cartNo);
	}
}
