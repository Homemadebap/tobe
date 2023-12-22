package kr.co.tobe.user.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.BasketVO;

@Service
public class UserPayServiceImpl implements UserPayService {

	@Autowired
	UserPayMapper mapper;
	
	@Override
	public List<BasketVO> getcart(String cartNo) {
//		Map<String, Object> map = new HashMap<String, Object>();
		return mapper.getCart(cartNo);
	}
}
