package kr.co.tobe.chiefAdmin.course;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;

@Controller
public class ChiefCourseController {

	@Autowired
	ChiefCourseService service;
	
	@GetMapping ("/chiefAdmin/course/chiefCourseForm.do")
	public String chiefClassForm() {
		return "chiefAdmin/course/chiefCourseForm";
	}
	
	@PostMapping ("/chiefAdmin/course/chiefCourseInsert.do")
	public String insert(CourseVO vo, Model model, MultipartFile file, HttpServletRequest request) {
		boolean r = service.insert(vo, file, request);
	      if (r) { // 정상적으로 DB에 insert 
	          model.addAttribute("cmd", "move");
	          model.addAttribute("msg", "수업등록이 완료되었습니다.");
	          model.addAttribute("url", "/tobe/chiefAdmin/course/chiefCourseForm.do");
	       } else { // 등록안됨
	          model.addAttribute("cmd", "back");
	          model.addAttribute("msg", "수업등록에 실패하였습니다.");    
	       }
		return "chiefAdmin/common/alert";
	}
	
}
