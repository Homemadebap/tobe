package kr.co.tobe.user.course;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class UserCourseController {

	@Autowired
	UserCourseService service;
	
	@GetMapping("/user/course/userCourseIndex.do")
	public String getLectureList(Model model, CourseVO courseVO) {
		List<CourseVO> lectureList = service.getLectureList(courseVO);
		model.addAttribute("lectureList", lectureList);
		return "user/course/userCourseIndex";
	}
	
	@GetMapping("/user/course/userCourseDetail.do")
	public String Detail(Model model, CourseVO courseVO) {
		List<CourseVO> lectureList = service.getLectureList(courseVO);
		model.addAttribute("lectureList", lectureList);
		return "user/course/userCourseDetail";
	}


	//강좌 문의 등록 
	@PostMapping("/user/course/qna/insert.do")
	public String insert(Model model, HttpServletRequest request, CqnaVO vo) {
		HttpSession sess = request.getSession();
		MemberVO login = (MemberVO)sess.getAttribute("loginInfo");
		vo.setMember_no(login.getMember_no());
		int r = service.cQnaInsert(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "??"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/course/userCourseAskForm";
	}
	//수정 이동 view
	@GetMapping("/user/course/qna/edit.do")
	public String edit(Model model, CqnaVO vo) {
//		model.addAttribute("vo", service.view(vo, false)); 
		
		return "user/course/userCourseModAskForm";
	}
	//강좌 문의 수정 
	@PostMapping("/user/course/qna/update.do")
	public String update(Model model, HttpServletRequest request, CqnaVO vo){//, MultipartFile file) {
		int r = service.cQnaUpdate(vo);//, file, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "??");
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
	//강좌 문의 삭제 
	@GetMapping("/user/course/qna/delete.do")
	public String delete(Model model, HttpServletRequest request, CqnaVO vo) {//, MultipartFile file) {
		int r = service.cQnaDelete(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("url", "??");
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
}
