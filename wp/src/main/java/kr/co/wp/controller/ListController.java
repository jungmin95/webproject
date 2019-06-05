package kr.co.wp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.wp.service.ListService;

@Controller
@RequestMapping(value ="list")
public class ListController {

	@Autowired
	ListService service;
	
}
