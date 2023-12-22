package kr.co.tobe.admin.common;

import java.util.Map;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.CqnaVO;

public interface AdCommonService {
	AdminVO login(AdminVO vo);
	
	Map<String, Object> todayPayCnt(AdminVO avo);
	Map<String, Object> todayPayCancelCnt(AdminVO avo);
	Map<String, Object> thisMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthPayTotal(AdminVO avo);
	Map<String, Object> lastMonthChargeTotal(AdminVO avo);
	Map<String, Object> thisYearPayTotal(AdminVO avo);
	Map<String, Object> cqnaList(Map<String, Object> map);
	
}
