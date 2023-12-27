package kr.co.tobe.user.pay;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.BasketVO;
import kr.co.tobe.vo.PayDetailVO;
import kr.co.tobe.vo.PayVO;

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
	
	@Override
	public Map<String, Object> CartMap(int cart_no) {
		return mapper.CartMap(cart_no);
	}

	@Override
	public List<PayVO> getcart(Map<Object, Object> cartmap) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean pay(PayVO vo, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean payDetail(PayDetailVO vo, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public List<Map<String, Object>> getorder(Map map) {
		return mapper.getorder(map);
	}
}
