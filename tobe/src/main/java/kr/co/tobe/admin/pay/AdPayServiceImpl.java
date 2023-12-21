package kr.co.tobe.admin.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdPayServiceImpl implements AdPayService {

	@Autowired
	AdPayMapper mapper;
	
	@Override
	public List<Map> getlist() {	
		return mapper.getlist();
	}
}
