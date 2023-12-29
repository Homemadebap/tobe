package kr.co.tobe.chiefAdmin.pay;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChiefPayServiceImpl implements ChiefPayService {

	@Autowired
	ChiefPayMapper mapper;
	
	@Override
	public List<Map> getlist() {	
		return mapper.getlist();
	}
}
