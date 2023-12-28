package kr.co.tobe.chiefAdmin.email;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.EmailVO;
import kr.co.tobe.vo.MemberVO;

@Service
public class ChiefEmailServiceImpl implements ChiefEmailService {

	@Autowired
	ChiefEmailMapper mapper;

	@Override
	public String memberEmail(int no) {
		return mapper.emailSelect(no);
	}

	@Override
	public int sendEmail(EmailVO vo) {
		return mapper.emailInsert(vo);
	}

	@Override
	public Map<String, Object> emailList(EmailVO param) {
		
		int count = mapper.count(param); // 총개수
        // 총페이지수
        int totalPage = count / 20;
        if (count % 20 > 0) totalPage++;
        List<EmailVO> list = mapper.emailList(param); // 목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        // 하단에 페이징처리
        int endPage = (int)(Math.ceil(param.getPage()/20.0)*20);
        int startPage = endPage - 19;
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
	public int findMember(String email) {
		return mapper.memberSelect(email);
	}
	
	@Override
	public Map<String, Object> memberListS(MemberVO param) {
		int count = mapper.memberCount(param); // 총개수
        // 총페이지수
        int totalPage = count / 10;
        if (count % 10 > 0) totalPage++;
        List<MemberVO> list = mapper.memberList(param); // 목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        // 하단에 페이징처리
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
