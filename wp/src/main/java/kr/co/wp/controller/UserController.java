package kr.co.wp.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.wp.domain.User;
import kr.co.wp.service.MemberService;

@Controller
@RequestMapping(value="user")
public class UserController {

	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "login.do", method=RequestMethod.POST)
	public String login(HttpSession session, String user_id, String user_pw) {
		
		if("1234".equals(user_pw)) {
			session.setAttribute("id", user_id);
			session.setAttribute("name", user_id);
		}
		return "redirect:/views/login_main.jsp";
	}
	
	@RequestMapping(value ="join.do",method= RequestMethod.GET)
	public String join(Model model,String user_id, String user_pw, String user_name, Integer user_sex, Integer user_age) {
		
		
		model.addAttribute("user_id",user_id);
		model.addAttribute("user_pw", user_pw);
		model.addAttribute("user_name", user_name);
		model.addAttribute("user_sex", user_sex);
		model.addAttribute("user_age", user_age);
		
		return "redirect:/views/join.jsp";
	}
	
	@RequestMapping(value ="join.do",method= RequestMethod.POST)
	public String join(User user) {
		
		service.register(user);
		
		return "redirect:/views/index.jsp";
	}
	
	
}
