//package kr.co.wp.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import kr.co.wp.domain.Survey;
//import kr.co.wp.service.SurveyService;
//
//@Controller
//@RequestMapping(value="survey")
//public class SurveyController {
//
//	@Autowired
//	private SurveyService service;
//	
//	
//	
//	
//	@RequestMapping(value="survey.do", method=RequestMethod.POST)
//	public String radio(HttpSession session, Survey survey, int r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8) {
//				
//		session.setAttribute("r1", r1);
//		session.setAttribute("r2", r2);
//		session.setAttribute("r3", r3);
//		session.setAttribute("r4", r4);
//		session.setAttribute("r5", r5);
//		session.setAttribute("r6", r6);
//		session.setAttribute("r7", r7);
//		session.setAttribute("r8", r8);
//		
//		service.set(survey,r1,r2,r3,r4,r5,r6,r7,r8);
//		
//		return "redirect:/views/showall.jsp"; 
//	}
//
//	
//}
