package kr.co.tobe.chiefAdmin.customer;

import java.util.Map;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;

public interface ChiefCustomerService {

	public boolean insert(NoticeVO vo);
	public boolean faqinsert(FaqVO vo);
	Map<String, Object> list(NoticeVO vo);

}
