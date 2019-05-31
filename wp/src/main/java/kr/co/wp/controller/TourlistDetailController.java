//package kr.co.webproject.controller;
//
//import javax.inject.Inject;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
//
//import kr.co.wp.service.TourlistService;
//
//@Controller
//@RequestMapping("view/Board/*")
//public class TourlistDetailController {
//	
//	@Inject
//	TourlistService TourlistService;
//	
//	@RequestMapping("/list.do")
//	public ModelAndView List(ModelAndView mav) {
//		mav.setViewName("/view/list");
//		mav.addObject("list", TourlistService.listTourlist());
//		return mav;
//	}
//
//	@RequestMapping("/detail/{tourlistId}")
//	public ModelAndView detail(@PathVariable("tourlistId") int tourlistId, ModelAndView mav) {
//		mav.setViewName("/Board/TourlistDetail");
//		mav.addObject("tour", TourlistService.detailTourlist(tourlistId));
//		return mav;
//		
//	}
//	
//}