package kr.co.webproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="user")
public class MemberController {

	@RequestMapping("login.do")
	public String login(HttpSession session, String inputEmail, String inputPassword) {
		
		if("1234".equals(inputPassword)) {
			session.setAttribute("id", inputEmail);
			session.setAttribute("name", inputEmail);
		}
		return "redirect:/index.jsp";
	}
}
