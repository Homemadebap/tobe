package kr.co.tobe.user.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.tobe.vo.CourseVO;

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
	
}
