package kr.co.wp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.wp.domain.User;
import kr.co.wp.service.MemberService;
import kr.co.wp.service.logic.MemberServiceLogic;

@Controller
@RequestMapping(value="user")
public class UserController {

	
	@Autowired
	private MemberService service;
	
	@RequestMapping("login.do")
	public String login(HttpSession session, String inputEmail, String inputPassword) {
		
		if("1234".equals(inputPassword)) {
			session.setAttribute("id", inputEmail);
			session.setAttribute("name", inputEmail);
		}
		return "redirect:/board/list.do";
	}
	
	@RequestMapping(value ="join.do",method=RequestMethod.POST)
	public String join(User user) {
		
		service.register(user);
		
		return "redirect:/index.jsp";
	}
	
}
