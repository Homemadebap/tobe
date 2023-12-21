package kr.co.tobe.chiefAdmin.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.MemberVO;


@Service
public class ChiefMemberServiceImpl implements ChiefMemberService {

	@Autowired
	ChiefMemberMapper mapper;
	
	@Override
	public MemberVO detail(int no) {
		return mapper.cmemberDetail(no);
	}
	@Override
	public int update (MemberVO vo) {
		return mapper.cmemberUpdate(vo);
	}
	
	@Override
	public Map<String, Object> cmemberList(MemberVO param) {
		int count = mapper.cmemberCount(param); //총개수
        int totalPage = count / 10; //총 페이지
        if (count % 10 > 0) totalPage++;
        System.out.println(param.getPage());
        System.out.println(param.getStartIdx());
        List<MemberVO> cmemberList = mapper.cmemberList(param); //목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", cmemberList);
        
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
