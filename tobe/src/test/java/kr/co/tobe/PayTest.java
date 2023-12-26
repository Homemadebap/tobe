package kr.co.tobe;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.co.tobe.user.pay.UserPayMapper;
import kr.co.tobe.vo.PayDetailVO;
import kr.co.tobe.vo.PayVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {kr.co.tobe.config.MvcConfig.class})
@WebAppConfiguration
public class PayTest {
	
	@Autowired
	private UserPayMapper mapper;
	
	@Test
	public void insertPay() {
		PayVO vo = new PayVO();
		vo.setMember_no(4);
		vo.setPay_total(10000);
		vo.setPay_complete(1);
//		vo.setPay_cancel(0);
//		vo.setPay_refund(0);
		vo.setPay_by(2);
		vo.setPay_detail("");
		vo.setPay_by_account("");
		
		int result = mapper.pay(vo);
		System.out.println(result);
	}
	
	@Test
	public void insertPayDetail() {
		PayDetailVO vo = new PayDetailVO();
		vo.setCourse_no(14);
		vo.setOrder_no(6);
		vo.setI_startday("2023-12-26");
		vo.setI_endday("2023-12-31");
		vo.setI_time("9시");
		vo.setI_cname("강좌명");
		vo.setI_price(50000);
		
		mapper.payDetail(vo);
	}
}
