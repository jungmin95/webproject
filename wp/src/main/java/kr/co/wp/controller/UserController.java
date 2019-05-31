package kr.co.wp.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
     
      return "redirect:/views/survey.jsp";
   
   }
   @RequestMapping(value ="join.do", method= RequestMethod.GET)
   public String join()  {
      
      return "redirect:/views/join.jsp";
   
   }
   
}