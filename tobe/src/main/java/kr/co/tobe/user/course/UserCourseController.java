package kr.co.tobe.user.course;

import java.util.HashMap;
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
		int pageSize = 10; // 페이지당 아이템 개수
	    courseVO.setPage(pageSize);
	    courseVO.setStartIdx((pageSize - 1) * pageSize);

	    // 페이징 관련 서비스 메서드를 호출하여 결과를 가져옴
	    Map<String, Object> pagingResult = service.getComplexSelect(courseVO);

	    // 결과에서 필요한 정보를 모델에 추가
	    model.addAttribute("lectureList", pagingResult.get("list"));
	    model.addAttribute("currentPage", pageSize);
	    model.addAttribute("totalPages", pagingResult.get("totalPage"));

		return "user/course/userCourseIndex";
	}
	
	@GetMapping("/user/course/userCourseIndex2.do")
	@ResponseBody
	public Map<String, Object> getLectureList2(Model model, CourseVO courseVO) {
		System.out.println("Received request: " + courseVO);
		//List<CourseVO> lectureList = service.getLectureList(courseVO);
		Map<String, Object> complexSelectResult = service.getComplexSelect(courseVO);
		//model.addAttribute("lectureList", lectureList);
		model.addAttribute("complexSelectResult", complexSelectResult);
		return complexSelectResult;
	}
	@GetMapping("/user/course/userCourseList.do")
	public String userCourseList(Model model, CourseVO courseVO) {
		Map<String, Object> complexSelectResult = service.getComplexSelect(courseVO);
		model.addAttribute("map", complexSelectResult);
		return "user/course/userCourseList";
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
		System.out.println(vo+"nnnnn");
		int r = service.cQnaInsert(vo);//, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 저장되었습니다.");
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do"+"?course_no="+vo.getCourse_no()); //돌아갈 페이지 박모훈 완성 후 ..
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "등록 오류");
		}
		return "user/common/userAlert";
	}
	//수정 이동 view
//	@GetMapping("/user/course/userCourseModAskForm.do")
//	public String edit(Model model, CqnaVO vo) {
//		model.addAttribute("vo", service.view(vo, false)); 
//		//수정 시 vo 담을것 (모훈)
//		return "user/course/userCourseModAskForm";
//	}
	
	@GetMapping("/user/course/userCourseModAskForm.do")
	public String edit(Model model, @RequestParam("cqna_no") int cqna_no) {
	    // 서비스를 통해 CqnaVO를 가져오는 로직 추가
	    CqnaVO editedVo = service.view(cqna_no, false);

	    // 모델에 강좌명(infoCourseName)을 추가
	    model.addAttribute("infoCourseName", editedVo.getInfoCourseName());

	    // 수정 시 vo를 모델에 추가
	    model.addAttribute("vo", editedVo);

	    return "user/course/userCourseModAskForm";
	}

	//강좌 문의 수정 
	@PostMapping("/user/course/qna/update.do")
	public String update(Model model, HttpServletRequest request, CqnaVO vo){//, MultipartFile file) {
		int r = service.cQnaUpdate(vo);//, file, request);
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
			model.addAttribute("url", "/tobe/user/course/userCourseDetail.do"+"?course_no="+vo.getCourse_no());
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
	    public String getQnaDetail(Model model, @RequestParam(name="course_no", required = true) int course_no, @RequestParam(value = "page", defaultValue = "1") int page) {
	        int itemsPerPage = 10;
	        int startIdx = (page - 1) * itemsPerPage;

	        List<CqnaVO> cqnaList = service.getCqnaDetailList(course_no, startIdx, itemsPerPage);
	        int totalCqnaCount = service.getCqnaCount(course_no);
	        int totalPage = (int) Math.ceil((double) totalCqnaCount / itemsPerPage);

	        model.addAttribute("cqnaList", cqnaList);
	        model.addAttribute("currentPage", page);
	        model.addAttribute("itemsPerPage", itemsPerPage);
	        model.addAttribute("totalCqnaCount", totalCqnaCount);
	        model.addAttribute("totalPage", totalPage);

	        return "/user/course/userCourseDetailQnaList";
	    }
	
//	@GetMapping("/user/course/userCourseDetail.do")
//	public String cqnaList(Model model, CqnaVO vo) {
//        CqnaVO qna = service.getReviewDetail(qnaNo);
//        model.addAttribute("qna", qna);
//        return "user/course/userCourseDetailQnaList";
//    }
	
	@GetMapping("/user/course/userCourseDetail.do")
    public String getlectureDetail(Model model, @RequestParam("course_no") int course_no) {
        CourseVO courseInfo = service.getlectureDetail(course_no);
        model.addAttribute("courseInfo", courseInfo);
        return "/user/course/userCourseDetail";
    }
	
//	@GetMapping("/user/course/userCourseDetailReviewList.do")
//    public String getReviewDetail(Model model, @RequestParam("course_no") int course_no) {
//		List<ReviewVO> reviewList = service.ReviewList(course_no);
//		model.addAttribute("reviewList", reviewList);
//      	System.out.println(reviewList);
//      	System.out.println("안뇽");
//		return "/user/course/userCourseDetailReviewList";
//    }
	
	@GetMapping("/user/course/userCourseDetailReviewList.do")
    public String getReviewList(Model model, @RequestParam(name="course_no", required = true) int course_no, @RequestParam(value = "page", defaultValue = "1") int page) {
        int itemsPerPage = 10;
        int startIdx = (page - 1) * itemsPerPage;

        List<ReviewVO> reviewList = service.getReviewList(course_no, startIdx, itemsPerPage);
        int totalReviewCount = service.getCqnaCount(course_no);
        int totalPage = (int) Math.ceil((double) totalReviewCount / itemsPerPage);

        model.addAttribute("reviewList", reviewList);
        model.addAttribute("currentPage", page);
        model.addAttribute("itemsPerPage", itemsPerPage);
        model.addAttribute("totalReviewCount", totalReviewCount);
        model.addAttribute("totalPage", totalPage);

        return "/user/course/userCourseDetailReviewList";
    }
	
	@GetMapping("/user/course/userCourseAskDetail.do")
	public String viewCqnaDetail(Model model,  CqnaVO vo) {
		model.addAttribute("vo", service.cqnaDetail(vo));
		return "user/course/userCourseAskDetail";
	}
	

//	@GetMapping("/user/course/userCourseAskForm.do")
//	public String write(
//	        @RequestParam("infoCourse_no") String infoCourse_no,
//	        @RequestParam("infoDetail_no") String infoDetail_no,
//	        @RequestParam("infoCourseName") String infoCourseName,
//	        Model model,
//	        HttpSession sess
//		){
//	    MemberVO user = (MemberVO) sess.getAttribute("loginInfo");
//
//	    // 새로운 CqnaVO 인스턴스를 생성하고 속성을 설정합니다
//	    CqnaVO vo = new CqnaVO();
//	    vo.setCourse_no(Integer.parseInt(infoCourse_no));
//	    vo.setMember_no(user.getMember_no());
//	    vo.setCq_title("원하는 제목"); // 원하는 제목으로 설정하세요
//	    vo.setCq_content("원하는 내용"); // 원하는 내용으로 설정하세요
//
//	    // 서비스의 cQnaInsert 메서드를 호출하여 CqnaVO를 삽입합니다
//	    int result = service.cQnaInsert(vo);
//
//	    // 뷰에서 사용할 모델에 속성을 추가합니다
//	    model.addAttribute("infoCourse_no", vo.getCourse_no());
//	    model.addAttribute("infoDetail_no", infoDetail_no); // infoDetail_no가 변경되지 않았다고 가정합니다
//	    model.addAttribute("infoCourseName", infoCourseName);
//
//	    return "/user/course/userCourseAskForm";
//	}

//	@GetMapping("/user/course/userCourseAskForm.do")
//	public String write( @RequestParam("infoCourse_no") String infoCourse_no,
//				@RequestParam("infoDetail_no") String infoDetail_no,
//				@RequestParam("infoCourseName") String infoCourseName,
//				Model model, HttpSession sess ) {
//		MemberVO user = (MemberVO)sess.getAttribute("loginInfo");
//
//		 	CqnaVO vo = new CqnaVO();
//		    vo.setCourse_no(infoCourse_no);
//		    vo.setDetail_no(infoDetail_no);
//		    vo.setCourseName(infoCourseName);
//		    vo.setMember_no(user.getMember_no());
//
//		    // 서비스의 cQnaInsert 메서드 호출
//		    int result = qnaService.cQnaInsert(vo);
//
//		    // write 메서드에서 사용할 vo를 model에 추가
//		    model.addAttribute("infoCourse_no", vo.getInfoCourse_no());
//		    model.addAttribute("infoDetail_no", vo.getInfoDetail_no());
//		    model.addAttribute("infoCourseName", vo.getInfoCourseName());
//		  
//		    return "/user/course/userCourseAskForm";
//		model.addAttribute("infoCourse_no", infoCourse_no);
//		model.addAttribute("infoDetail_no", infoDetail_no);
//		model.addAttribute("infoCourseName", infoCourseName );
//      
//		return "/user/course/userCourseAskForm";
//	}
	
	
//	@GetMapping("/user/course/userCourseAskForm.do")
//    public String userCourseAskForm(
//            @RequestParam(name = "infoCourse_no", required = false) String infoCourseNo,
//            @RequestParam(name = "infoCourseName", required = false) String infoCourseName,
//            Model model
//    ) {
//        // infoCourse_no와 infoCourseName을 이용하여 특정 정보 조회
//        CourseVO info = service.getInfoByCourse(infoCourseNo, infoCourseName);
//
//        // 조회 결과를 모델에 추가
//        model.addAttribute("info", info);
//        model.addAttribute("infoCourseNo", infoCourseNo);  
//        model.addAttribute("infoCourseName", infoCourseName); 
//        // 작성하기 폼으로 이동
//        return "user/course/userCourseAskForm";
//    }
	
//	@GetMapping("/user/course/userCourseAskForm.do")
//	public String edit(Model model, @RequestParam String infoCourse_no) {
//		if (infoCourse_no.isEmpty()) {
//	        // 빈 문자열 처리 또는 예외 처리
//	    } else {
//	        try {
//	            int courseNo = Integer.parseInt(infoCourse_no);
//	            CourseVO vo = new CourseVO();
//	            vo.setCourse_no(courseNo);
//	            model.addAttribute("vo", service.getInfoByCourse(vo, false)); 
//	        } catch (NumberFormatException e) {
//	            // 숫자로 변환할 수 없는 문자열이 입력된 경우 처리
//	        }
//	    }
//		return "user/course/userCourseAskForm";
//	}
	
	@GetMapping("/user/course/userCourseAskForm.do")
	public String edit(Model model, CourseVO vo) {
		model.addAttribute("vo", service.getInfoByCourse(vo, false)); 
		
		return "user/course/userCourseAskForm";
	}
	   
}