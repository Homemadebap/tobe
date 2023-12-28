package kr.co.tobe.chiefAdmin.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.tobe.util.SendMail;
import kr.co.tobe.vo.EmailVO;
import kr.co.tobe.vo.MemberVO;

@Controller
public class ChiefEmailController {

	@Autowired
	ChiefEmailService service;
	
	@Autowired
	SendMail sendEmail;
	
	@GetMapping("/chiefAdmin/email/chiefEmailForm.do")
	public String emailWrite(int[] member_no, Model model) {
		String email="";
		System.out.println(member_no + "member_no");
		if(member_no == null) {
			model.addAttribute("email", null);
		}else {
			for(int i=0; i<member_no.length;i++) {
				email +=service.memberEmail(member_no[i]); //회원 emai주소 가져오기 
				if((member_no.length -1) != i) {
					email += ", "; //회원 emai주소 가져오기 
				}
				
			}
			model.addAttribute("email", email);
		}
		
		return "chiefAdmin/email/chiefEmailForm"; 
	}
	
	@PostMapping("/chiefAdmin/email/send.do")
	public String emailSend(String[] email, EmailVO vo, Model model, int[] no ) {
		System.out.println("vo!!!" + vo);

		sendEmail.init();
		
		int r =0;
		for(int i=0; i<email.length; i++) {
			sendEmail.sendMail(email[i], vo.getE_title(), vo.getE_content());
			vo.setMember_no(service.findMember(email[i]));
			r = service.sendEmail(vo);//, request); /db에 이메일 등록하기 
		}
		
		if (r > 0) {
			model.addAttribute("cmd", "move");
			model.addAttribute("msg", "정상적으 메일이 전송되었습니다.");
			model.addAttribute("url", "/tobe/chiefAdmin/email/chiefEmailBox.do"); 
		} else {
			model.addAttribute("cmd", "back");
			model.addAttribute("msg", "전송 오류");
		}
		
		return "chiefAdmin/common/alert"; 
	}
	
	@GetMapping("/chiefAdmin/email/chiefEmailBox.do")
	public String emailBox(Model model, EmailVO vo) {
		//db에서 보낸 메일함 가져오기 
		//member이름,제목, 보낸날
		model.addAttribute("map",service.emailList(vo));
		return "chiefAdmin/email/chiefEmailBox"; 
	}
	
	@GetMapping("/chiefAdmin/email/chiefMemberListEmail.do")
	public String eMemberList(Model model, MemberVO vo ) {
		model.addAttribute("map", service.memberListS(vo));
		System.out.println( service.memberListS(vo));
		return "chiefAdmin/email/chiefMemberListEmail"; 
	}
	
	@GetMapping("/chiefAdmin/email/chiefEmailIndex.do")
	public String index() {
		
		return "chiefAdmin/email/chiefEmailIndex"; 
	}
}
