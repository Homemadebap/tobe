package kr.co.tobe.user.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Service
public class UserCustomerServiceImpl implements UserCustomerService {

	@Autowired
	UserCustomerMapper mapper;
	
	@Override
	public int insert(NoticeVO vo, MultipartFile file, HttpServletRequest request) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int qnaInsert(QnaVO vo) {
		int r = mapper.qnaInsert(vo);
		if (r > 0) mapper.updateGno(vo.getQna_no());
		return r;
	}

	@Override
	public int qnaUpdate(QnaVO vo) {
		int r = mapper.qnaUpdate(vo);
		return r;
	}

	@Override
	public int qnaDelete(QnaVO vo) {
		return mapper.qnaDelete(vo.getQna_no());
	}
}
