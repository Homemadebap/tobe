package kr.co.tobe.user.pay;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPayServiceImpl implements UserPayService {

	@Autowired
	UserPayMapper mapper;
	
	@Override
	public Map<String, Object> payDetailIndex(int detail_no) {
		return mapper.payDetailIndex(detail_no);
	}
}
