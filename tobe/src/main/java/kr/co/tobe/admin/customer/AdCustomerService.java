package kr.co.tobe.admin.customer;

import java.util.Map;

import org.springframework.stereotype.Service;

import kr.co.tobe.vo.AdminVO;

@Service
public interface AdCustomerService {
	
	Map<String, Object> todayPayCnt(AdminVO avo);
	Map<String, Object> todayPayCancelCnt(AdminVO avo);
	Map<String, Object> thisMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthChargeTotal(AdminVO avo);
	Map<String, Object> thisYearPayTotal(AdminVO avo);
	
	
}
