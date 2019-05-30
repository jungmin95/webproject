package kr.co.wp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	
	//메인페이지
	@RequestMapping(value="/index")
	public String main_mainpage() {

		return "main/main-page";
	}
	@RequestMapping(value="/board/create")
	public String board_create() {
		return "Board/BoardCreate";
	}
	
}
