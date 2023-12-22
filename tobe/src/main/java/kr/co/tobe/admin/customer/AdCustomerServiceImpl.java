package kr.co.tobe.admin.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdCustomerServiceImpl implements AdCustomerService {

		@Autowired
		AdCustomerMapper mapper;

		@Override
		public int cQnaReply(int no) {
			return mapper.replyInsert(no);
		}
		
		
		

}
