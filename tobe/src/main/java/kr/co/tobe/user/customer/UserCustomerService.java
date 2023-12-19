package kr.co.tobe.user.customer;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.QnaVO;


public interface UserCustomerService {
	Map<String, Object> list(QnaVO vo);
	int insert(QnaVO vo, MultipartFile file, HttpServletRequest request);
	QnaVO view(QnaVO vo, boolean isViewcntIncrease);
	int update(QnaVO vo, MultipartFile file, HttpServletRequest request);
	int delete(QnaVO vo, HttpServletRequest request);
	int Qna(QnaVO vo, MultipartFile file, HttpServletRequest request);
}
