package kr.co.tobe.user.course;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.tobe.vo.CourseVO;

@Mapper
public interface UserCourseMapper {
	List<CourseVO> lectureSelect(CourseVO CVO);
}
