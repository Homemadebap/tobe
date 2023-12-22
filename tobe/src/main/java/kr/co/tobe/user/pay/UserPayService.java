package kr.co.tobe.user.pay;

import java.util.List;

import kr.co.tobe.vo.BasketVO;

public interface UserPayService {
	List<BasketVO> getcart(String cartNo);
}
