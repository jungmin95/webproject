package kr.co.webproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.webproject.domain.User;
import kr.co.webproject.service.MemberService;



@Controller
@RequestMapping(value="user")
public class MemberController {

	@Autowired
	private MemberService service;
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String inputId, String inputPw) {
		
		if("1234".equals(inputPw)) {
			session.setAttribute("id", inputId);
			session.setAttribute("name", inputId);
		}
		return "redirect:/index.jsp";
	}
	
	@RequestMapping(value ="join.do",method=RequestMethod.POST)
	public String join(User user) {
		
		service.register(user);
		
		return "redirect:/index.jsp";
	}
	

}
