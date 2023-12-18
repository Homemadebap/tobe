package kr.co.tobe.user.review;

import kr.co.tobe.vo.ReviewVO;

public interface UserReviewService {
	int insertReview (ReviewVO rvo);
	double selectCourseRating(int no);
	int updateCourseRating(String no, String rating);
}
