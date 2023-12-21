package kr.co.tobe.user.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Service
public class UserCustomerServiceImpl implements UserCustomerService {

	@Autowired
	private UserCustomerMapper mapper;
	
	@Override
	public Map<String, Object> qnaList(QnaVO param) {
		int count = mapper.qnaCount(param); //총개수
        int totalPage = count / 10; //총 페이지
        if (count % 10 > 0) totalPage++;
        System.out.println(param.getPage());
        System.out.println(param.getStartIdx());
        List<QnaVO> list = mapper.qnaList(param); //목록
        
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


	@Override
	public Map<String, Object> noticeList(NoticeVO param) {
		int count = mapper.noticeCount(param); //총개수
        int totalPage = count / 10; //총 페이지
        if (count % 10 > 0) totalPage++;
        System.out.println(param.getPage());
        System.out.println(param.getStartIdx());
        List<NoticeVO> noticeList = mapper.noticeList(param); //목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", noticeList);
        
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
	public NoticeVO noticeDetail(NoticeVO vo) {
		NoticeVO data = mapper.detail(vo.getNotice_no());
		// TODO Auto-generated method stub
		return data;
	}


	@Override
	public int noticeInsert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}


//	@Override
//	public int noticeInsert(NoticeVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
	@Override
	public Map<String, Object> faqList(FaqVO param) {
		int count = mapper.faqCount(param); //총개수
        int totalPage = count / 10; //총 페이지
        if (count % 10 > 0) totalPage++;
        System.out.println(param.getPage());
        System.out.println(param.getStartIdx());
        List<FaqVO> faqList = mapper.faqList(param); //목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", faqList);
        
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




}
