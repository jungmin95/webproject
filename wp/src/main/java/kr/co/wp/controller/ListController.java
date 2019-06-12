package kr.co.wp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@RequestMapping("findbySeoul.do")
	public ModelAndView findAllList_Seoul() {
		List<Tourlist> list = service.findBySeoul();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyGyeonggi.do")
	public ModelAndView findAllList_Gyeonggi() {
		List<Tourlist> list = service.findByGyeonggi();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyIncheon.do")
	public ModelAndView findAllList_Incheon() {
		List<Tourlist> list = service.findByIncheon();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyGangwon.do")
	public ModelAndView findAllList_Gangwon() {
		List<Tourlist> list = service.findByGangwon();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyChungbuk.do")
	public ModelAndView findAllList_Chungbuk() {
		List<Tourlist> list = service.findByChungbuk();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyChungnam.do")
	public ModelAndView findAllList_Chungnam() {
		List<Tourlist> list = service.findByChungnam();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyBusan.do")
	public ModelAndView findAllList_Busan() {
		List<Tourlist> list = service.findByBusan();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	@RequestMapping("findbyGyeongbuk.do")
	public ModelAndView findAllList_Gyeongbuk() {
		List<Tourlist> list = service.findByGyeongbuk();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyGyeongnam.do")
	public ModelAndView findAllList_Gyeongnam() {
		List<Tourlist> list = service.findByGyeongnam();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyJeonbuk.do")
	public ModelAndView findAllList_Jeonbuk() {
		List<Tourlist> list = service.findByJeonbuk();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyJeonnam.do")
	public ModelAndView findAllList_Jeonnam() {
		List<Tourlist> list = service.findByJeonnam();
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findbyJeju.do")
	public ModelAndView findAllList_Jeju() {
		List<Tourlist> list = service.findByJeju();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByActivity.do")
	public ModelAndView findAllList_Activity() {
		List<Tourlist> list = service.findByActivity();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByYolo.do")
	public ModelAndView findAllList_Yolo() {
		List<Tourlist> list = service.findByYolo();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByHistory.do")
	public ModelAndView findAllList_History() {
		List<Tourlist> list = service.findByHistory();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByHealing.do")
	public ModelAndView findAllList_Healing() {
		List<Tourlist> list = service.findByHealing();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByActivity_9.do")
	public ModelAndView findAllList_Activity_9() {
		List<Tourlist> list = service.findByActivity_9();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByYolo_9.do")
	public ModelAndView findAllList_Yolo_9() {
		List<Tourlist> list = service.findByYolo_9();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByHistory_9.do")
	public ModelAndView findAllList_History_9() {
		List<Tourlist> list = service.findByHistory_9();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	@RequestMapping("findByHealing_9.do")
	public ModelAndView findAllList_Healing_9() {
		List<Tourlist> list = service.findByHealing_9();
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	
	
	@RequestMapping("findByName.do")
	public ModelAndView searchByName(@RequestParam("list_name") String list_name) {
		
		
		List<Tourlist> list = service.findByName(list_name);
		
		ModelAndView modelAndView = new ModelAndView("gallery/list");
		modelAndView.addObject("Tourlist", list);
		
		return modelAndView;
	}
	
	   @RequestMapping("detail.do")
	   public ModelAndView DetailList(@RequestParam("list_num") int list_num) {
	      ModelAndView modelAndView = new ModelAndView("gallery/Detail");
	      modelAndView.addObject("list",service.findDetail(list_num));
	      
	      List<Tourlist> list = service.findAll();
	      
	      
	      
	      return modelAndView;
	   }
	   @RequestMapping(value="remove.do", method= RequestMethod.GET)
	   public String remove(int list_num) {
	      service.remove(list_num);
	      
	      return "redirect:/list/findAll.do";
	      
	   }
	//   @RequestMapping(value="remove.do", method= RequestMethod.GET)
	//   public ModelAndView remove(@RequestParam("list_num") int list_num, Model model, HttpServletRequest request) {
//	      
//	      System.out.println("name");
//	      List<Tourlist> list = service.findAll();
//	      model.addAttribute("Tourlist", list);
//	      System.out.println("name");
//	      ModelAndView modelAndView = new ModelAndView("gallery/Detail");
//	      model.addAttribute("list",service.remove(list_num));
//	      System.out.println("num");
//	      
//	      
////	      return "redirect:/list/detail.do";
//	      return modelAndView;
	//   }
	//   @RequestMapping(value ="remove.do", method= RequestMethod.POST)
//	      public String remove(Model model ,@RequestParam("list_num") int list_num, @RequestParam("tour_areaname") String tour_areaname,@RequestParam("tourname") String tourname,@RequestParam("type") String type
//	            ,@RequestParam("tourtype") String tourtype,@RequestParam("tourlocation") String tourlocation,@RequestParam("tourstory") String tourstory
//	            ,@RequestParam("file") String file) {
//	      
//	      
//	      
//	         
//	         return "gallery/Deatail";
//	      }
	   
	
	@RequestMapping(value ="create.do" ,method= RequestMethod.GET)
	public String CreateList() {
		
		return "redirect:/views/gallery/create.jsp";
	}
	
	@RequestMapping(value ="create.do" , method= RequestMethod.POST)
	public String CreateList(HttpSession session,Tourlist list,@RequestParam("areaname") String areaname,@RequestParam("tourname") String tourname
			,@RequestParam("tourtype") String tourtype,@RequestParam("arealocation") String arealocation,@RequestParam("tourstory") String tourstory
			,@RequestParam("tourimg") String tourimg) {
		
		list.setUserid((String)session.getAttribute("user_id"));
		list.setTour_areaname(areaname);
		list.setTourLocation(arealocation);
		list.setTourtype(tourtype);
		list.setTourname(tourname);
		list.setTourstory(tourstory);
		list.setTourimg(tourimg);

		service.register(list);
	
	
	return "redirect:/main/index.do";
	}


	
}
