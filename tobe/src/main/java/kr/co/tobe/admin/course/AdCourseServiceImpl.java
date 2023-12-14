package kr.co.tobe.admin.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdCourseServiceImpl implements AdCourseService {

	@Autowired
	AdCourseMapper mapper;
}
