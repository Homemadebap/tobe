package kr.co.tobe.user.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CourseVO;

@Service
public class UserCourseServiceImpl implements UserCourseService {

	@Autowired
	UserCourseMapper mapper;
	
	public List<CourseVO> getLectureList(CourseVO CVO) {
		return mapper.lectureSelect(CVO);
	}
		
}
