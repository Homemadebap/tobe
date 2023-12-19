package kr.co.tobe.user.customer;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.tobe.vo.QnaVO;

public interface UserCustomerService {
	Map<String, Object> list(QnaVO vo);
	
	int qnaInsert(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaUpdate(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaDelete(QnaVO vo);//, HttpServletRequest request);
}
