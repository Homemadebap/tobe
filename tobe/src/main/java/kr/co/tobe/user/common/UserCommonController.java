package kr.co.tobe.user.common;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class UserCommonController {

	@Autowired
	UserCommonService service;
	
	@GetMapping("/user/common/userIndex.do")
	public String index(){//(HttpSession sess) {
		//sess.setAttribute("CourseComp1",  "empty");
		//sess.setAttribute("CourseComp2", "empty");
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
	
//	@GetMapping("/user/review/userReviewIndex.do")
//	public String userReviewIndex() {
//		return "user/review/userReviewIndex";
//	}
	
//	@GetMapping("/user/customer/userCustomer.do")
//	public String userCustomer() {
//		return "user/customer/userCustomer";
//	}
	
	@GetMapping("/user/member/userMyPageMain.do")
	public String userMyPageMain(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		
		model.addAttribute("user", user); // 사용자 정보 넘기기
		model.addAttribute("cci", service.currentCourseIndex(user)); // 현재수강중인강의에 들어갈 정보
		model.addAttribute("pci", service.pastCourseIndex(user)); // 수강신청내역에 들어갈 정보
		model.addAttribute("mcai", service.myCourseAskIndex(user)); // 나의문의에 들어갈 정보
		model.addAttribute("ai", service.askIndex(user)); // 나의문의에 들어갈 정보
		model.addAttribute("mri", service.myReviewIndex(user)); // 나의후기에 들어갈 정보
		
		// db에는 문자열로 있는 날짜들을 Date 타입으로 바꾸는 것
		List<Map<String, Object>> result = service.pastCourseIndex(user);
		for (Map<String, Object> map : result) {
		    // 특정 키를 사용하여 값을 가져오기
		    Object value = map.get("pay_date1");
			if (value instanceof String) {
			    System.out.println("데이터는 String 타입입니다.");
			} else if (value instanceof Integer) {
			    System.out.println("데이터는 Integer 타입입니다.");
			} else if (value instanceof List) {
			    System.out.println("데이터는 List 타입입니다.");
			} else if (value instanceof LocalDateTime){
			    System.out.println("데이터는 LocalDateTime 타입입니다.");
			} else if(value instanceof Date){
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
		model.addAttribute("user", user);
		return "user/member/userModify";
	}
	
	@GetMapping("/user/member/userQuit.do")
	public String quit(HttpSession sess, Model model) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
		model.addAttribute("user", user);
		return "user/member/userQuit";
	}
	
	@GetMapping("/user/common/modal.do")
	public String modal (HttpSession sess, Model model) {
		 CourseVO Comp1 = (CourseVO)sess.getAttribute("CourseComp1");
		 CourseVO Comp2 = (CourseVO)sess.getAttribute("CourseComp2");
		 Map<String, Object> map = new HashMap<String, Object>();
		 
		  if(Comp1 != null){
			  map.put("cosComp1", service.compList(Comp1.getCourse_no()));
			  map.put("cosCompRe1", service.compTotalReview(Comp1.getCourse_no()));
		  }	
		  if(Comp2 != null) {
			  map.put("cosComp2", service.compList(Comp2.getCourse_no()));
			  map.put("cosCompRe2", service.compTotalReview(Comp2.getCourse_no()));
		  } 
		  model.addAttribute("map", map);
		  
		return "user/common/courseModal"; 
	}
	
	@GetMapping("/user/common/modalRemove.do")
	public String modalRemove (HttpSession sess, Model model, String remove) {
		System.out.println("나여기 와사@~~~~~~~~~~~~");
		String r = remove;
		System.out.println(r+"zzzzzzzzzzzzzzzzzzzzz");
		if(r.equals("cosComp1")){//   r == "cosComp1") {
			System.out.println("첫번쨰");
			if(sess.getAttribute("CourseComp2") != null) { //세션 2가 있으면 세선2 -> 세션 1로 변경
				sess.setAttribute("CourseComp1", sess.getAttribute("CourseComp2"));
				sess.removeAttribute("CourseComp2");
			}else {
				sess.removeAttribute("CourseComp1");
			}
		} else if(r.equals("cosComp2")){
			sess.removeAttribute("CourseComp2");
			
		}
		System.out.println("세션1"+ sess.getAttribute("CourseComp1") +"세션2:"+sess.getAttribute("CourseComp2")+"!!!!!!");
		 CourseVO Comp1 = (CourseVO)sess.getAttribute("CourseComp1");
		 CourseVO Comp2 = (CourseVO)sess.getAttribute("CourseComp2");

		 Map<String, Object> map = new HashMap<String, Object>();
		 
		  if(Comp1 != null){
			  map.put("cosComp1", service.compList(Comp1.getCourse_no()));
			  map.put("cosCompRe1", service.compTotalReview(Comp1.getCourse_no()));
		  }	
		  if(Comp2 != null) {
			  map.put("cosComp2", service.compList(Comp2.getCourse_no()));
			  map.put("cosCompRe2", service.compTotalReview(Comp2.getCourse_no()));
		  } 
		  model.addAttribute("map", map);
		return "user/common/courseModal"; 
	}
	
	@ResponseBody
	@GetMapping("/user/common/calendar/list")
	public Map<String,Object>  calendarList() {
		service.calendarList();
		Map<String,Object> map = new HashMap<String, Object>();
		
		map.put("list", service.calendarList());
		return map;
	}
	
	
}
