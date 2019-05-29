package kr.co.webproject.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	
	
	//메인페이지
	@RequestMapping(value="index.do")
	public String main_mainpage() {

		return "main/main-page";
	}
	@RequestMapping(value="/board/create")
	public String board_create() {
		return "Board/BoardCreate";
	}
	
	@RequestMapping(value="/gallery/create")
	public String gallery_create() {
		return "Gallery/create";
	}
	
	@RequestMapping(value="/gallery/create1")
	public String gallery_create1() {
		return "Gallery/create1";
	}
	
}
