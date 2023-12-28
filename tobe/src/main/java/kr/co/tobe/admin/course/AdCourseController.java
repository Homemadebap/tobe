package kr.co.tobe.admin.course;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.EmailVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class AdCourseController {
	
	@Autowired
	AdCourseService service;
	
	@GetMapping("/admin/course/delete.do")
	public String courseDelete(int[] courseNo, Model model) {
		
		int r = 0;
		
		for(int i=0; i<courseNo.length; i++) {
			r = service.cosDelete(courseNo[i]);
			if(r < 1) {
				model.addAttribute("cmd", "back");
				model.addAttribute("msg", "등록 오류");
				return "admin/common/adAlert";
			}
		}
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 삭제되었습니다.");
			model.addAttribute("url", "/tobe/admin/course/adCourseIndex.do");
			
		return "admin/common/adAlert";
	}

}
