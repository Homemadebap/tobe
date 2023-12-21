package kr.co.tobe.admin.common;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.AdminVO;

@Service
public class AdCommonServiceImpl implements AdCommonService {

	@Autowired
	AdCommonMapper mapper;
	
	@Override
	public AdminVO login(AdminVO vo) {
		return mapper.login(vo);
	}
	
	@Override
	public Map<String, Object> todayPayCnt(AdminVO avo) {
		return mapper.todayPayCnt(avo);
	}
	
	@Override
	public Map<String, Object> todayPayCancelCnt(AdminVO avo) {
		return mapper.todayPayCancelCnt(avo);
	}
	
	@Override
	public Map<String, Object> thisMonthPayTotal(AdminVO avo) {
		return mapper.thisMonthPayTotal(avo);
	}
	
	@Override
	public Map<String, Object> lastMonthPayTotal(AdminVO avo) {
		return mapper.lastMonthPayTotal(avo);
	}
	
	@Override
	public Map<String, Object> lastMonthChargeTotal(AdminVO avo) {
		return mapper.lastMonthChargeTotal(avo);
	}
	
	@Override
	public Map<String, Object> thisYearPayTotal(AdminVO avo) {
		return mapper.thisYearPayTotal(avo);
	}
	
}
