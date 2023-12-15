package kr.co.tobe.user.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CourseVO;

@Service
public class UserCourseServiceImpl implements UserCourseService {

	@Autowired
	UserCourseMapper mapper;
	
	@Override
	public CourseVO lectureSelect(CourseVO CVO) {
		return mapper.lectureSelect(CVO);
	}

}
