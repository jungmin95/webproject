package kr.co.wp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.service.ListService;


@Controller
@RequestMapping(value ="list")
public class ListController {

	@Autowired
	ListService service;
	
	@RequestMapping("findAll.do")
	public ModelAndView findAllList() {
		List<Tourlist> list = service.findAll();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByName.do")
	public ModelAndView serchByName(@RequestParam("list_name") String list_name) {
		
		
		List<Tourlist> list = service.findByName(list_name);
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("detail.do")
	public ModelAndView DetailList(@RequestParam("list_num") int list_num) {
		
		
		ModelAndView modelAndView = new ModelAndView("gallery/Detail");
		modelAndView.addObject("list",service.find(list_num));
		return modelAndView;
	}
	
	@RequestMapping(value ="create.do" ,method= RequestMethod.GET)
	public String CreateList(Model model) {
		
		
		
		return "redirect:/views/gallery/create.jsp";
	}
	
	@RequestMapping(value ="create.do" ,method= RequestMethod.POST)
	public String CreateList(Model model ,@RequestParam("tour_areaname") String tour_areaname,@RequestParam("tourname") String tourname,@RequestParam("type") String type
			,@RequestParam("tourtype") String tourtype,@RequestParam("tourlocation") String tourlocation,@RequestParam("tourstory") String tourstory
			,@RequestParam("file") String file) {
		
		
		
		return null;
	}


	
}
