package kr.co.tobe.user.common;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.MemberVO;

@Controller
public class UserCommonController {

	@Autowired
	UserCommonService service;
	
	@GetMapping("/user/common/userIndex.do")
	public String index() {
		return "user/common/userIndex"; 
	}
	
//	@GetMapping("/user/course/userCourseIndex.do")
//	public String userCourseIndex() {
//		return "user/course/userCourseIndex";
//	}
	
	@GetMapping("/user/common/userTestSchedule.do")
	public String userTestSchedule() {
		return "user/common/userTestSchedule";
	}
	
	@GetMapping("/user/review/userReviewIndex.do")
	public String userReviewIndex() {
		return "user/review/userReviewIndex";
	}
	
	@GetMapping("/user/customer/userCustomer.do")
	public String userCustomer() {
		return "user/customer/userCustomer";
	}
	
	@GetMapping("/user/member/userMyPageMain.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		
		
		
		
		
		model.addAttribute("user", user); // 사용자 정보 넘기기
		model.addAttribute("cci", service.currentCourseIndex(user)); // 현재수강중인강의에 들어갈 정보
		model.addAttribute("pci", service.pastCourseIndex(user)); // 수강신청내역에 들어갈 정보
		model.addAttribute("mcai", service.myCourseAskIndex(user)); // 나의문의에 들어갈 정보
		model.addAttribute("mri", service.myReviewIndex(user)); // 나의후기에 들어갈 정보
		
		// db에는 문자열로 있는 날짜들을 Date 타입으로 바꾸는 것
		List<Map<String, Object>> result = service.myReviewIndex(user);
		for (Map<String, Object> map : result) {
		    // 특정 키를 사용하여 값을 가져오기
		    Object value = map.get("r_writedate");
			if (value instanceof String) {
			    System.out.println("데이터는 String 타입입니다.");
			} else if (value instanceof Integer) {
			    System.out.println("데이터는 Integer 타입입니다.");
			} else if (value instanceof List) {
			    System.out.println("데이터는 List 타입입니다.");
			} else if (value instanceof Date){
			    System.out.println("데이터는 Date 타입입니다.");
			} else {
				System.out.println("데이터 타입을 알 수 없습니다.");
			}
		}		
		
		return "user/member/userMyPageMain";
	}
	
	@GetMapping("/user/common/userBasket.do")
	public String userBasket(Model model, HttpServletRequest request) {
		HttpSession sess = request.getSession();
		MemberVO login = (MemberVO)sess.getAttribute("loginInfo");
		
		if(login == null) {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "로그인 후 다시 시도해주세요");
			return "user/common/userAlert";
		}

		model.addAttribute("cart", service.cartList(login.getMember_no()) );
		//model.addAttribute("cart", service.cartList(4));
		//test
		return "user/common/userBasket";
	}
	
	//장바구니 삭제
	@GetMapping("/user/common/userBasketDelete.do")
	public String delete(Model model, int[] cartNo) {
		int r = 0;
		
		for(int i=0; i<cartNo.length; i++) {
			//System.out.println(cartNo[0]+"입니다!!!!!!!!!!!");
			r = service.cartDelete(cartNo[i]);
			if(r < 1) {
				model.addAttribute("cmd", "back");
				model.addAttribute("msg", "등록 오류");
				return "user/common/userAlert";
			}
		}
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("url", "userBasket.do");
		return "user/common/userAlert";
	}
	
	@GetMapping("/user/common/userCompareCourse.do")
	public String userCompareCourse() {
		return "user/common/userCompareCourse";
	}
	
	@GetMapping("/user/member/userModify.do")
	public String userModify(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/member/userMyPageMain.do";
		}
		model.addAttribute("user", user);
		return "user/member/userModify";
	}
	
	@GetMapping("/user/member/userQuit.do")
	public String quit(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		if(user == null) {
			return "redirect:/user/common/userIndex.do";
		}
		model.addAttribute("user", user);
		return "user/member/userQuit";
	}
	

	
	
}
