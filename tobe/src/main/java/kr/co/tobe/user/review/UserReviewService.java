package kr.co.tobe.user.review;

import java.util.List;

import kr.co.tobe.vo.ReviewVO;

public interface UserReviewService {
	int insertReview (ReviewVO rvo);
	double selectCourseRating(int no);
	int updateCourseRating(String no, String rating);
	List<ReviewVO> getSelectReviewNo(ReviewVO rvo);
	ReviewVO getReviewDetail(int reviewNo);
}
