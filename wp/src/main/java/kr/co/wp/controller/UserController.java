package kr.co.wp.controller;





import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.wp.domain.User;
import kr.co.wp.service.MemberService;

@Controller
@RequestMapping(value="user")
public class UserController {

   
   @Autowired
   private MemberService service;
   
   
   @RequestMapping(value = "login.do", method= {RequestMethod.POST,RequestMethod.GET})
   public String login(HttpSession session, User user, @RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw) {
      
	   user.setId(user_id);
	   user.setPw(user_pw);
	   User logindeUser = service.login(user);
	   if(logindeUser != null) {
	   session.setAttribute("user_id", user_id);
	   session.setAttribute("user_pw", user_pw);
	   }else {
		   session.invalidate();
	   }
	   
	   user=service.find(user.getId());
	   
//	   System.out.println(user.getType());
//	   System.out.println(user.getId());
	   
	   if(user.getType()>0) {
		   return "main/main-page";
	   }
	  	   
	   return "redirect:/views/survey/survey.jsp";
   }
   
   @RequestMapping(value = "logout.do", method= {RequestMethod.POST,RequestMethod.GET})
   public String logout(HttpSession session,User user) {
      
	   session.invalidate();
	 
      return "main/main-page";
   }

   
   @RequestMapping(value ="join.do",method= {RequestMethod.POST,RequestMethod.GET})
   public String join(HttpSession session, User user,@RequestParam("user_id") String user_id,@RequestParam("user_pw") String user_pw
		   ,@RequestParam("user_name") String user_name,@RequestParam(value="user_sex") String user_sex
		   ,@RequestParam("user_age") Integer user_age) throws Exception {
      
      
     user.setId(user_id);
     user.setPw(user_pw);
     user.setName(user_name);
     user.setSex(user_sex);
     user.setAge(user_age);
     
     service.register(user); 
     
      return "main/main-page";
   
   }
   @RequestMapping(value ="join.do", method= RequestMethod.GET)
   public String join()  {
      
      return "redirect:/views/join.jsp";
   
   }
   
   @RequestMapping(value ="survey.do", method=RequestMethod.GET)
   public String survey(HttpSession session, User user, @RequestParam("type") Integer user_type) {
	   
	   user.setId((String)session.getAttribute("user_id"));
	   user.setType(user_type);
	   
	   service.survey(user);
	   
	   return "main/main-page";
   }
   
}