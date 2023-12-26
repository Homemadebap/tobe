package kr.co.tobe.chiefAdmin.course;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class ChiefCourseController {

	@Autowired
	ChiefCourseService service;
	
	@GetMapping ("/chiefAdmin/course/chiefCourseForm.do")
	public String chiefClassForm() {
		return "chiefAdmin/course/chiefCourseForm";
	}
	
	@PostMapping ("/chiefAdmin/course/chiefCourseInsert.do")
	public String insert(CourseVO vo, Model model, MultipartFile file, HttpServletRequest request, String educationName) {
		System.out.println(vo);
		boolean r = service.insert(vo, file, request);
	      if (r) { // 정상적으로 DB에 insert 
	          model.addAttribute("cmd", "move");         
	          model.addAttribute("msg", "수업등록이 완료되었습니다.");
	          model.addAttribute("url", "/tobe/chiefAdmin/course/chiefCourseForm.do");
	          if(educationName != null) {
	        	  model.addAttribute("cmd", "move");         
		          model.addAttribute("msg", "수업등록이 완료되었습니다.");
		          model.addAttribute("url", "/tobe/admin/course/adCourseIndex.do");
	          }
	       } else { // 등록안됨
	          model.addAttribute("cmd", "back");
	          model.addAttribute("msg", "수업등록에 실패하였습니다.");    
	       }
		return "chiefAdmin/common/alert";
	}
	
	@GetMapping ("/chiefAdmin/course/chiefCourseIndex.do")
	public String cheifMemberIndex() {
				
		return "chiefAdmin/course/chiefCourseIndex"; 
	}
	
	@GetMapping ("/chiefAdmin/course/chiefModCourseForm.do")
	public String cheifMod() {//Model model, int no
//			model.addAttribute("map", service.detail(no));
		return "chiefAdmin/course/chiefModCourseForm"; 
	}
	
	@PostMapping ("/chiefAdmin/course/chiefModCourseForm.do")
	public String cheifModForm(CourseVO vo, Model model) {
		int r = service.update(vo);
		String msg="";
		String url="chiefModCourseForm.do";
		if (r > 0) {
			msg = "정상적으로 수정되었습니다.";
		} else {
			msg = "수정사항이 없습니다";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		model.addAttribute("cmd","move");
		return "chiefAdmin/common/alert";
	}
}
