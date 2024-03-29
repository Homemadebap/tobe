package kr.co.tobe.user.review;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.tobe.vo.ReviewVO;

@Mapper
public interface UserReviewMapper {
	int insert (ReviewVO rvo);
	double selectCourse (int no);
	int updateCouse(@Param("rating") String userId, @Param("no") String ownerId);
	List<Map<String, Object>> selectReviewNo();
	ReviewVO ReviewDetail(int review_no);
}
