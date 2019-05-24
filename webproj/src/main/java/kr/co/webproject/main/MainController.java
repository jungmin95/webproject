package kr.co.webproject.main;

import org.springframework.web.bind.annotation.RequestMapping;

public class MainController {

	
	
	//메인페이지
	@RequestMapping(value="/index")
	public String main() {

		return "main/home";
	}
	@RequestMapping(value="/board/create")
	public String board_create() {
		return "Board/BoardCreate";
	}
}
