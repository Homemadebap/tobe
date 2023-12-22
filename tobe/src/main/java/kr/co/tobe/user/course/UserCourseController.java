package kr.co.tobe.user.course;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.CqnaVO;
import kr.co.tobe.vo.MemberVO;
import kr.co.tobe.vo.QnaVO;
import kr.co.tobe.vo.ReviewVO;

@Controller
public class UserCourseController {

	@Autowired
	UserCourseService service;
	
	@ResponseBody	
	@GetMapping("/user/course/setCourseComp.do")
	public String setCourseComp(Model model, int course_no, HttpSession sess) {
		 CourseVO Comp1 = (CourseVO)sess.getAttribute("CourseComp1");
		 CourseVO Comp2 = (CourseVO)sess.getAttribute("CourseComp2");
		  if(Comp1 != null){
			  if(Comp2 != null) {
				  return "full";
			  } else {
				  sess.setAttribute("CourseComp2", service.getSelectCourse(course_no));
			  }
		  } else {
			  sess.setAttribute("CourseComp1", service.getSelectCourse(course_no));
		  }
		  		
		System.out.println(sess.getAttribute("CourseComp1"));
		System.out.println(sess.getAttribute("CourseComp2"));
		return "success";
	}
		
	@GetMapping("/user/course/userCourseIndex.do")
	public String getLectureList(Model model, CourseVO courseVO) {
		System.out.println("Received request: " + courseVO);
		List<CourseVO> lectureList = service.getLectureList(courseVO);
//		List<CourseVO> complexSelectResult = service.getComplexSelect(courseVO);
		model.addAttribute("lectureList", lectureList);
//		model.addAttribute("complexSelectResult", complexSelectResult);
		return "user/course/userCourseIndex";
	}
	
	@GetMapping("/user/course/userCourseIndex2.do")
	@ResponseBody
	public List<CourseVO> getLectureList2(Model model, CourseVO courseVO) {
		System.out.println("Received request: " + courseVO);
		//List<CourseVO> lectureList = service.getLectureList(courseVO);
		List<CourseVO> complexSelectResult = service.getComplexSelect(courseVO);
		//model.addAttribute("lectureList", lectureList);
		model.addAttribute("complexSelectResult", complexSelectResult);
		return complexSelectResult;
	}
	
//	@GetMapping("/user/course/userCourseIndex.do")
//	public String getLectureList(Model model, @RequestParam(name = "academy") String academy,
//	        @RequestParam(name = "lecture") String lecture, @RequestParam(name = "local") String local,
//	        @RequestParam(name = "city") String city, @RequestParam(name = "level") String level,
//	        @RequestParam(name = "week") String week, @RequestParam(name = "time") String time) {
//	    CourseVO courseVO = new CourseVO();
//	    List<CourseVO> lectureList = service.getLectureList(courseVO);
//	    List<CourseVO> complexSelectResult = service.getComplexSelect(courseVO);
//	    model.addAttribute("lectureList", lectureList);
//	    model.addAttribute("complexSelectResult", complexSelectResult);
//	    return "user/course/userCourseIndex";
//	}
//	
//	@GetMapping("/user/course/userCourseDetail.do")
//	public String Detail(Model model, CourseVO courseVO) {
//		System.out.println(courseVO +"이거");
//		List<CourseVO> lectureList = service.getLectureList(courseVO);
//		model.addAttribute("lectureList", lectureList);
//		model.addAttribute("courseNo", courseVO.getCourse_no());
//		return "user/course/userCourseDetail";
//	}
	
//	강좌 문의 목록
//	@GetMapping("/user/course/userCourseDetail.do")
//	@ResponseBody
//	public Map<String, Object> CourseDetailCqna(CqnaVO vo) {
//		System.out.println("Received request: " + vo);
//		Map<String, Object> map = service.cqnaList(vo);
//		return map;
//	}

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
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do"); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
	//수정 이동 view
	@GetMapping("/user/course/qna/edit.do")
	public String edit(Model model, CqnaVO vo) {
//		model.addAttribute("vo", service.view(vo, false)); 
		//수정 시 vo 담을것 (모훈)
		return "user/course/userCourseModAskForm";
	}
	//강좌 문의 수정 
	@PostMapping("/user/course/qna/update.do")
	public String update(Model model, HttpServletRequest request, CqnaVO vo){//, MultipartFile file) {
		int r = service.cQnaUpdate(vo);//, file, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do");
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
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do");
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
	
	@GetMapping("/user/course/userCourseDetailQnaList.do")
    public String getReviewDetail(Model model, @RequestParam("course_no") int courseNo) {
		List<CqnaVO> Cqna = service.cqnaDetailList(courseNo);
		model.addAttribute("qna", Cqna);
      	System.out.println(Cqna);
      	System.out.println("하이");
		return "/user/course/userCourseDetailQnaList";
    }
	
//	@GetMapping("/user/course/userCourseDetail.do")
//	public String cqnaList(Model model, CqnaVO vo) {
//        CqnaVO qna = service.getReviewDetail(qnaNo);
//        model.addAttribute("qna", qna);
//        return "user/course/userCourseDetailQnaList";
//    }
	
	@GetMapping("/user/course/userCourseDetail.do")
    public String getlectureDetail(Model model, @RequestParam("courseNo") int courseNo) {
        CourseVO courseInfo = service.getlectureDetail(courseNo);
        model.addAttribute("courseInfo", courseInfo);
        return "/user/course/userCourseDetail";
    }
}