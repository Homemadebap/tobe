package kr.co.tobe.user.pay;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.BasketVO;
import kr.co.tobe.vo.PayVO;

@Controller
public class UserPayController {

	@Autowired
	UserPayService service;
	
	@GetMapping("/user/pay/userPayCompleteDetail.do")
	public String userPayCompleteDetail(@RequestParam("detail_no") int detail_no, Model model) {
		
		model.addAttribute("pdvo", service.payDetailIndex(detail_no));
		return "user/pay/userPayCompleteDetail";
	}
	
	@GetMapping("/user/pay/userPayCancelForm.do")
	public String userPayCancelForm(@RequestParam("detail_no") int detail_no, Model model) {
		model.addAttribute("pdvo", service.payDetailIndex(detail_no));
		return "user/pay/userPayCancelForm";
	}
	
	@PostMapping("/user/pay/userPayCancel.do")
	public String userPayCancel(@RequestParam("detail_no") int detail_no,
								@RequestParam("pay_cancel_reason") String pay_cancel_reason,
								@RequestParam("pay_cancel_reason_detail") String pay_cancel_reason_detail,
								Model model) {
		int order_no = (int)service.payDetailIndex(detail_no).get("order_no");
		Map<String, Object> cancelReasonMap = new HashMap<>();
		cancelReasonMap.put("order_no", order_no);
		cancelReasonMap.put("pay_cancel_reason", pay_cancel_reason);
		cancelReasonMap.put("pay_cancel_reason_detail", pay_cancel_reason_detail);
		boolean r = service.payCancel(cancelReasonMap);
		
		if(r) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "결제가 취소되었습니다.");
			model.addAttribute("url", "/tobe/user/pay/userPayCancelDetail.do?detail_no="+detail_no);
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "결제 취소가 실행되지 않았습니다.");
		}
		return "user/common/userAlert";
	}
	
	@GetMapping("/user/pay/userPayCancelDetail.do")
	public String userPayCancelDetail(@RequestParam("detail_no") int detail_no, Model model) {
		model.addAttribute("pcdi", service.payCancelDetailIndex(detail_no));
		return "user/pay/userPayCancelDetail";
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
	@PostMapping ("/user/pay/userPayCompleteDetail.do")
	public String pay(PayVO vo, Model model, MultipartFile file, HttpServletRequest request) {
		boolean pay = service.pay(vo, file, request);
	     
		return "user/pay/userPayCompleteDetail.do?cartNo='+selectedNoList.join(',')";
	}
	
}
//	@PostMapping("/user/pay/userPayCompleteDetail.do")
//		@ResponseBody
//		public String requestPay(HttpServletRequest req, @ModelAttribute BasketVO bvo) {
//			Map<Object, Object> Cartmap = new HashMap<>();
//			HttpSession session = req.getSession();
//			MemberVO user = (MemberVO) session.getAttribute("userDetail");
//			CartDTO mdto = memberMapper.getMemberById(user.getUsername());
////			
//			List<PayVO> pvo = service.getcart(Cartmap);
//			int total_cost = 0;
//			int total_price = 0;
//			int total_income = 0;
//			String order_products = "";
//			
			// 카트 안 상품목록의 원가, 판매가, 이익을 더한다
//			for(BasketVO basket : pvo) {
				//total_cost += pvo.getProd_cost();
//				total_price += basket.getpay_total();
				//total_income += pvo.getProd_income();
				//order_products += pvo.getProd_name() + ",";
//			}
//			
//			// orderDTO 내용을 완성
//			odto.setMem_no(mdto.getMem_no());
//			odto.setOrder_cost(total_cost);
//			odto.setOrder_price(total_price);
//			odto.setOrder_income(total_income);
//			odto.setOrder_products(order_products);
//			// orderDTO insert
//			int res = orderMapper.insertOrder(odto);
//			Map<Object, Object> map = new HashMap<>();
//			if (res > 0) {
//				map.put("cnt", 1);
//				// orderDTO의 고유 no값 가져오기
//				OrderDTO odto2 = orderMapper.getOrderLast(mdto.getMem_no());
//				int order_no = odto2.getOrder_no();
//				// oderDTO 내용을 ajax로 넘기기
//				map.put("no", order_no);
//				map.put("products", odto2.getOrder_products());
//				map.put("name", odto2.getOrder_name());
//				map.put("price", odto2.getOrder_price());
//				map.put("addr", odto2.getOrder_addr());
//				//session.removeAttribute("cart");
//			} else {
//				map.put("cnt", 0);
//				map.put("msg", "주문을 실패했습니다. 다시 시도해주세요.");
//			}
//			return "user/pay/userPayCompleteDetail";
//}		
//	}
//		Map<String, Object> CartMap = new HashMap<>();
//		HttpSession session = req.getSession();
//
//		int total_cost = 0;
//		int total_price = 0;
//		int total_income = 0;
//		String order_products = "";
//		
		// 카트 안 상품목록의 원가, 판매가, 이익을 더한다
//		for(BasketVO vo : plist) {
//			total_cost += pdto.getProd_cost();
//			total_price += pdto.getProd_price();
//			total_income += pdto.getProd_income();
//			order_products += pdto.getProd_name() + ",";
		
		
//		 //orderDTO 내용을 완성
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
//		return "user/pay/userPayDetail";
//	}

