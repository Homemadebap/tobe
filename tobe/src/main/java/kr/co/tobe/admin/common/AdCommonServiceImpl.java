package kr.co.tobe.admin.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.tobe.vo.AdminVO;
import kr.co.tobe.vo.CqnaVO;

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
	
	@Override
	public Map<String, Object> cqnaList(Map<String, Object> param){//CqnaVO param) {
	
		int count = mapper.cqnaCount(param); // 총개수
        // 총페이지수
        int totalPage = count / 10;
        if (count % 10 > 0) totalPage++;
        List<CqnaVO> list = mapper.cqnaList(param); // 목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        // 하단에 페이징처리

        CqnaVO cqvo = (CqnaVO)param.get("cqvo");
        int endPage = (int)(Math.ceil(cqvo.getPage()/10.0)*10);
        int startPage = endPage - 9;
        if (endPage > totalPage) endPage = totalPage;
        boolean prev = startPage > 1;
        boolean next = endPage < totalPage;
        map.put("endPage", endPage);
        map.put("startPage", startPage);
        map.put("prev", prev);
        map.put("next", next);
		return map;
	}

	
}
