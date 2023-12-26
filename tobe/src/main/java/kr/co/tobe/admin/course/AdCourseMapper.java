package kr.co.tobe.admin.course;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdCourseMapper {
	int delete (int no);
}
