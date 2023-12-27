package kr.co.tobe.user.review;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;
import kr.co.tobe.vo.ReviewVO;

@Controller
public class UserReviewController {

	@Autowired
	UserReviewService service;

	@GetMapping("/user/review/write.do")
	public String write( @RequestParam("infoCourse_no") String infoCourse_no,
						 @RequestParam("infoDetail_no") String infoDetail_no,
						 @RequestParam("infoCourseName") String infoCourseName,
						 Model model, HttpSession sess ) {
		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");

		model.addAttribute("infoCourse_no", infoCourse_no);
		model.addAttribute("infoDetail_no", infoDetail_no);
		model.addAttribute("infoCourseName", infoCourseName );
		
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
	
	@GetMapping("/user/review/userReviewDetail.do")
    public String getReviewDetail(Model model, @RequestParam("reviewNo") int reviewNo) {
        ReviewVO review = service.getReviewDetail(reviewNo);
        model.addAttribute("review", review);
        return "user/review/userReviewDetail";
    }
	
	@GetMapping("/user/review/userModReviewForm.do")
	public String getModReviewDetail(Model model, @RequestParam("reviewNo") int reviewNo) {
		ReviewVO review = service.getReviewDetail(reviewNo);
		model.addAttribute("review", review);
		return "user/review/userModReviewForm";
	}
	
}
