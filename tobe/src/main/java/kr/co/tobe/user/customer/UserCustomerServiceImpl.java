package kr.co.tobe.user.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Service
public class UserCustomerServiceImpl implements UserCustomerService {

	@Autowired
	private UserCustomerMapper mapper;
	
	@Override
	public Map<String, Object> list(QnaVO param) {
		int count = mapper.count(param); //총개수
        int totalPage = count / 10; //총 페이지
        if (count % 10 > 0) totalPage++;
        System.out.println(param.getPage());
        System.out.println(param.getStartIdx());
        List<QnaVO> list = mapper.list(param); //목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        //페이징
        int endPage = (int)(Math.ceil(param.getPage()/10.0)*10);
        int startPage = endPage - 9;
        if (endPage > totalPage) endPage = totalPage;
        boolean prev = startPage > 1;
        boolean next = endPage < totalPage;
        map.put("endPage", endPage);
        map.put("startPage", startPage);
        map.put("prev", prev);
        map.put("next", next);
		return map;
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
