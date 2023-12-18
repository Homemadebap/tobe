package kr.co.tobe.user.review;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.tobe.vo.ReviewVO;

@Mapper
public interface UserReviewMapper {
	int insert (ReviewVO rvo);
	double selectCourse (int no);
	int updateCouse(@Param("rating") String userId, @Param("no") String ownerId);
}
