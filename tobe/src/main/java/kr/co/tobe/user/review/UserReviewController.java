package kr.co.tobe.user.review;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;
import kr.co.tobe.vo.ReviewVO;

@Controller
public class UserReviewController {

	@Autowired
	UserReviewService service;

	@GetMapping("/user/review/write.do")
	public String write(Model model) {
		model.addAttribute("infoCourse_no", 13);
		model.addAttribute("infoDetail_no", 1);
		model.addAttribute("infoCourseName", "안녕 나는 강좌명이애" );
		
		return "/user/review/userReviewForm";
	}
	
	@PostMapping("/user/review/insert.do")
	public String insert(HttpServletRequest request, ReviewVO rvo, Model model) {
		HttpSession sess = request.getSession();
		MemberVO login = (MemberVO)sess.getAttribute("loginInfo");
		rvo.setMember_no(login.getMember_no());
		
		int r = service.insertReview(rvo);
		double rating = (rvo.getR_rating() + service.selectCourseRating(rvo.getCourse_no()))/2.0;
		int rr = service.updateCourseRating(rating+"", rvo.getCourse_no()+"");
		
		if (r > 0 &&  rr> 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "index.do"); //url : 후기 목록..? 마이페이지?
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
	
	
//	@GetMapping("/user/review/edit.do")
//	public String edit() {
//		return "/user/review/userModReviewForm";
//	}
	
	//후기 수정
//	@PostMapping("/user/course/qna/update.do")
//	public String update(Model model,ReviewVO vo){//, MultipartFile file) {
//		int r = service.updateReview(vo);//, file, request);
//		if (r > 0) {
//			model.addAttribute("cmd", "move");
//			model.addAttribute("msg", "정상적으로 수정되었습니다.");
//			model.addAttribute("url", "??");
//		} else {
//			model.addAttribute("cmd", "back");
//			model.addAttribute("msg", "등록 오류");
//		}
//		return "user/common/userAlert";
//	}
	
	@GetMapping("/user/review/userReviewIndex.do")
	public String getSelectReviewNo(Model model, ReviewVO rvo) {
		List<ReviewVO> ReviewList = service.getSelectReviewNo(rvo);
		model.addAttribute("ReviewList", ReviewList);
		return "user/review/userReviewIndex";
	}
	
}
