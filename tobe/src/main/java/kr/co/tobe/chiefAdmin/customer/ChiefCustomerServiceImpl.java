package kr.co.tobe.chiefAdmin.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.FaqVO;
import kr.co.tobe.vo.NoticeVO;
import kr.co.tobe.vo.QnaVO;

@Service
public class ChiefCustomerServiceImpl implements ChiefCustomerService {
	
	@Autowired
	ChiefCustomerMapper mapper;

	@Override
	public boolean insert(NoticeVO vo) {
//		if (!file.isEmpty()) {
//	          // 파일명
//	          String org = file.getOriginalFilename();
//	          String ext = org.substring(org.lastIndexOf("."));
//	          String real = System.currentTimeMillis()+ext;
//	          // 파일저장
//	          String path = request.getRealPath("/upload/")+real;
//	          try {
//	             file.transferTo(new File(path));
//	          } catch (Exception e) {}
//	          vo.setTeacher_img_org(org);
//	          vo.setTeacher_img_real(real);
//	       }
		  
		return mapper.insert(vo) > 0 ? true : false;
	}
	
	@Override
	public boolean faqinsert(FaqVO vo) {
		return mapper.faqinsert(vo) > 0 ? true : false;
	}
	
//	@Override
//	public Map<String, Object> list(NoticeVO vo) {
//		int count = mapper.count(vo); // 총개수
//        // 총페이지수
//        int totalPage = count / 10;
//        if (count % 10 > 0) totalPage++;
//        List<NoticeVO> list = mapper.list(vo); // 목록
//        
//        Map<String, Object> map = new HashMap<>();
//        map.put("count", count);
//        map.put("totalPage", totalPage);
//        map.put("list", list);
//        
//        // 하단에 페이징처리
//        int endPage = (int)(Math.ceil(vo.getPage()/10.0)*10);
//        int startPage = endPage - 9;
//        if (endPage > totalPage) endPage = totalPage;
//        boolean prev = startPage > 1;
//        boolean next = endPage < totalPage;
//        map.put("endPage", endPage);
//        map.put("startPage", startPage);
//        map.put("prev", prev);
//        map.put("next", next);
//		return map;
//	}
	
	@Override
	public List<NoticeVO> getlist(NoticeVO vo) {	
		return mapper.getlist(vo);
	}
	
	@Override
	public NoticeVO getNoticeDetail(int noticeNo) {
		return mapper.NoticeDetail(noticeNo);
	}
	
	@Override
	public List<QnaVO> getqnalist(QnaVO vo) {	
		return mapper.getqnalist(vo);
	}
	
	@Override
	public QnaVO getQnaDetail(int qnaNo) {
		return mapper.QnaDetail(qnaNo);
	}
	
	@Override
	public List<FaqVO> getfaqlist(FaqVO vo) {	
		return mapper.getfaqlist(vo);
	}

}
