package kr.co.wp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.domain.User;
import kr.co.wp.service.ListService;
import kr.co.wp.service.MemberService;

@Controller
@RequestMapping(value="main")
public class MainController {

	@Autowired
	ListService service;
	@Autowired
	private MemberService service1;
	//메인페이지
	@RequestMapping(value="index.do")
	public ModelAndView findAllList(HttpSession session,User user) {
		if(session.getAttribute("user_id") != null) {
			
			user=service1.find((String)session.getAttribute("user_id"));
			if(user.getType() == 1) {
				List<Tourlist> list = service.findByActivity_9();
				ModelAndView modelAndView = new ModelAndView("main/main-page");
				modelAndView.addObject("Tourlist", list);
				modelAndView.addObject("type", user.getType());
				return modelAndView;
			}
			else if(user.getType() == 2) {
				List<Tourlist> list = service.findByYolo_9();
				ModelAndView modelAndView = new ModelAndView("main/main-page");
				modelAndView.addObject("Tourlist", list);
				modelAndView.addObject("type", user.getType());
				return modelAndView;
			}
			else if(user.getType() == 3) {
				List<Tourlist> list = service.findByHistory_9();
				ModelAndView modelAndView = new ModelAndView("main/main-page");
				modelAndView.addObject("Tourlist", list);
				modelAndView.addObject("type", user.getType());
				return modelAndView;
			}
			else if(user.getType() == 4) {
				List<Tourlist> list = service.findByHealing_9();
				ModelAndView modelAndView = new ModelAndView("main/main-page");
				modelAndView.addObject("Tourlist", list);
				modelAndView.addObject("type", user.getType());
				return modelAndView;
			}
		}
		
		// 1 -> 액티비티
		// 2 -> 욜로
		// 3 -> 역사
		// 4 -> 힐링
		List<Tourlist> list = service.findTop10();
		
		ModelAndView modelAndView = new ModelAndView("main/main-page");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	
	//게시판 create
	@RequestMapping(value="/board/create")
	public String board_create() {
		return "Board/BoardCreate";
	}
	//갤러리 create
	@RequestMapping(value="/gallery/create")
	public String gallery_create() {
		return "gallery/create";
	}
	
}
