package kr.co.tobe.admin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.tobe.vo.CqnaVO;

@Service
public class AdCustomerServiceImpl implements AdCustomerService {

		@Autowired
		AdCustomerMapper mapper;

		@Override
		public int cQnaReply(CqnaVO vo) {
			return mapper.replyInsert(vo);
		}
		
		
		

}
