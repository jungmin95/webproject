package kr.co.wp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.service.ListService;

@Controller
public class MainController {

	@Autowired
	ListService service;
	
	//����������
	@RequestMapping(value="index.do")
	public ModelAndView findAllList() {
		List<Tourlist> list = service.findTop10();
		
		ModelAndView modelAndView = new ModelAndView("main/main-page");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	
	//�Խ��� create
	@RequestMapping(value="/board/create")
	public String board_create() {
		return "Board/BoardCreate";
	}
	//������ create
	@RequestMapping(value="/gallery/create")
	public String gallery_create() {
		return "gallery/create";
	}
	
}
