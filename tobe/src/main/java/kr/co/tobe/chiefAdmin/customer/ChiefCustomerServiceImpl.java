package kr.co.tobe.chiefAdmin.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CqnaVO;
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
	
	@Override
	public int QnaReply(QnaVO vo) {
		return mapper.replyInsert(vo);
	}

}
