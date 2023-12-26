package kr.co.tobe.user.pay;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.BasketVO;
import kr.co.tobe.vo.CourseVO;
import kr.co.tobe.vo.PayDetailVO;
import kr.co.tobe.vo.PayVO;

public interface UserPayService {

	Map<String, Object> payDetailIndex(int detail_no);
	boolean payCancel(Map<String, Object> cancelReasonMap);
	Map<String, Object> payCancelDetailIndex(int detail_no);
	List<BasketVO> getcart(String cartNo);
	Map<String, Object> CartMap(int cart_no);
	List<PayVO> getcart(Map<Object, Object> cartmap);
	boolean pay(PayVO vo, MultipartFile file, HttpServletRequest request);
	boolean payDetail(PayDetailVO vo, MultipartFile file, HttpServletRequest request);
}
