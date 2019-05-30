package kr.co.wp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	
	//메인페이지
	@RequestMapping(value="index.do")
	public String main_mainpage() {

		return "main/main-page";
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
