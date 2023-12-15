package kr.co.tobe.user.course;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;

@Mapper
public interface UserCourseMapper {
	CourseVO lectureSelect(CourseVO CVO);
}
