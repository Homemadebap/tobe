package kr.co.tobe.admin.customer;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.AdminVO;

@Service
public class AdCustomerServiceImpl implements AdCustomerService {

		@Autowired
		AdCustomerMapper mapper;
		
		@Override
		public Map<String, Object> todayPayCnt(AdminVO avo) {
			return mapper.todayPayCnt(avo);
		}
		
		@Override
		public Map<String, Object> todayPayCancelCnt(AdminVO avo) {
			return mapper.todayPayCnt(avo);
		}
}
