package kr.co.tobe.user.review;

import java.util.List;
import java.util.Map;

import kr.co.tobe.vo.ReviewVO;

public interface UserReviewService {
	int insertReview (ReviewVO rvo);
	double selectCourseRating(int no);
	int updateCourseRating(String no, String rating);
	List<Map<String, Object>> getSelectReviewNo();
	ReviewVO getReviewDetail(int review_no);
}
