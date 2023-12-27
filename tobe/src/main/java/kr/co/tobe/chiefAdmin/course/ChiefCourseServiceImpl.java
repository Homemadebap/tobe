package kr.co.tobe.chiefAdmin.course;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.MemberVO;

@Service
public class ChiefCourseServiceImpl implements ChiefCourseService {

	@Autowired
	ChiefCourseMapper mapper;
	
	@Override
	public boolean insert(CourseVO vo, MultipartFile file, HttpServletRequest request) {
		if (!file.isEmpty()) {
	          // 파일명
	          String org = file.getOriginalFilename();
	          String ext = org.substring(org.lastIndexOf("."));
	          String real = System.currentTimeMillis()+ext;
	          // 파일저장
	          String path = request.getRealPath("/upload/")+real;
	          try {
	             file.transferTo(new File(path));
	          } catch (Exception e) {}
	          vo.setTeacher_img_org(org);
	          vo.setTeacher_img_real(real);
	       }
		  
		return mapper.insert(vo) > 0 ? true : false;
	}
	@Override
	public int update (CourseVO vo) {
		return mapper.courseUpdate(vo);
	}
	
	@Override
	public CourseVO modcourse(int no) {
		return mapper.modcourse(no);
	}

}
