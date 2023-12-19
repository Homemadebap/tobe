package kr.co.tobe.user.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

public interface UserCustomerService {
	
	int insert(NoticeVO vo, MultipartFile file, HttpServletRequest request);
	int qnaInsert(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaUpdate(QnaVO vo);//, MultipartFile file, HttpServletRequest request);
	int qnaDelete(QnaVO vo);//, HttpServletRequest request);
}
