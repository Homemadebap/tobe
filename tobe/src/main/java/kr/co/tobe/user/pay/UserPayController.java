package kr.co.tobe.user.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tobe.vo.BasketVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
	
	@GetMapping("/user/pay/userPayCompleteDetail.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");

		
		return "user/pay/userPayCompleteDetail";
	}
	
	@GetMapping ("/user/pay/userPayDetail.do")
	public String userPayDetail(Model model, String cartNo) {
//		System.out.println(cartNo[0]+" 카트다~~~~~~~~~~~`"+cartNo[1]);
		List<BasketVO> basket = service.getcart(cartNo);
		model.addAttribute("cartNo", cartNo);
		model.addAttribute("basket", basket);
		System.out.println(basket);
		return "user/pay/userPayDetail";
	}
	
	@PostMapping("/user/pay/userPayDetail")
	@ResponseBody
	public String paymentOk(HttpServletRequest req, @ModelAttribute BasketVO bvo) {
		HttpSession session = req.getSession();

		int total_cost = 0;
		int total_price = 0;
		int total_income = 0;
		String order_products = "";
		
		// 카트 안 상품목록의 원가, 판매가, 이익을 더한다
//		for(BasketVO vo : plist) {
//			total_cost += pdto.getProd_cost();
//			total_price += pdto.getProd_price();
//			total_income += pdto.getProd_income();
//			order_products += pdto.getProd_name() + ",";
		
		
		// orderDTO 내용을 완성
//		odto.setMem_no(mdto.getMem_no());
//		odto.setOrder_cost(total_cost);
//		odto.setOrder_price(total_price);
//		odto.setOrder_income(total_income);
//		odto.setOrder_products(order_products);
//		// orderDTO insert
//		int res = orderMapper.insertOrder(odto);
//		Map<Object, Object> map = new HashMap<>();
//		if (res > 0) {
//			map.put("cnt", 1);
//			// orderDTO의 고유 no값 가져오기
//			OrderDTO odto2 = orderMapper.getOrderLast(mdto.getMem_no());
//			int order_no = odto2.getOrder_no();
//			// oderDTO 내용을 ajax로 넘기기
//			map.put("no", order_no);
//			map.put("products", odto2.getOrder_products());
//			map.put("name", odto2.getOrder_name());
//			map.put("price", odto2.getOrder_price());
//			map.put("addr", odto2.getOrder_addr());
//			//session.removeAttribute("cart");
//		} else {
//			map.put("cnt", 0);
//			map.put("msg", "주문을 실패했습니다. 다시 시도해주세요.");
//		}
//		
		return "user/pay/userPayDetail";
	}
}
