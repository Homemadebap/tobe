package kr.co.tobe.chiefAdmin.course;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//
	@Override
	public Map<String, Object> courseListS(CourseVO param) {
		int count = mapper. courseCount(param); // 총개수
        // 총페이지수
        int totalPage = count / 10;
        if (count % 10 > 0) totalPage++;
        List<CourseVO> list = mapper.courseList(param); // 목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        // 하단에 페이징처리
        int endPage = (int)(Math.ceil(param.getPage()/10.0)*10);
        int startPage = endPage - 9;
        if (endPage > totalPage) endPage = totalPage;
        boolean prev = startPage > 1;
        boolean next = endPage < totalPage;
        map.put("endPage", endPage);
        map.put("startPage", startPage);
        map.put("prev", prev);
        map.put("next", next);
		return map;
	}

}
