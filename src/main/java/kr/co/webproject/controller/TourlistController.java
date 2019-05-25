package kr.co.webproject.controller;

import java.awt.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.webproject.domain.Tourlist;
import kr.co.webproject.service.TourlistService;

@Controller
@RequestMapping("Tourlist")
public class TourlistController {

	@Autowired
	private TourlistService service;
	
	@RequestMapping("list.do")  // list.do라는 매핑생성
	public String findAll(Model model) {
		List<Tourlist> Tourlists = service.findAllTourlists();
		model.addAttribute("boards", Tourlists);
		
		return "article/articleMain";
	}
	
	@RequestMapping("mgntList.do")
	public String findAllforMgnt(Model model) {
		List<Tourlist> Tourlists = service.findAllTourlists();
		model.addAttribute("Tourlist", Tourlists);
	
		return "board/boardList";
	}
	@RequestMapping(value="regist.do", method=RequestMethod.GET)
	public String regist(Model model) {
		List<Tourlist> Tourlists = service.findAllTourlists();
		model.addAttribute("Tourlist", Tourlist);
		return "Tourlist/TourlistCreate";
		
	}
	
	@RequestMapping(value="regist.do", method=RequestMethod.POST)
	public String regist(Tourlist Tourlist, HttpSession session) {
		
		Tourlist.setCreatorName((String)session.getAttribute("id"));
		service.registerBoard(Tourlist);
		return "redirect:/Tourlist/mgntList.do";
		
	}
	@RequestMapping("find.do")
	public String find(String TourlistId, Model model) {
		List<Tourlist> boards = service.findAllTourlists();
		model.addAttribute("Tourlists", Tourlists);
		
		Tourlist Tourlist = service.findTourlist(TourlistId);//board에서 boardid를이용하여 게시글찾음
		model.addAttribute("TourlistDetail", Tourlist);
		
		return "article/articleList";
		
	}
	@RequestMapping(value="modify.do", method=RequestMethod.GET) //modify page를 보여줘야함
	public String modify(String TourlistId, Model model) {
		List<Tourlist> Tourlists = service.findAllTourlists();
		model.addAttribute("Tourlists", Tourlists);
		
		Tourlist Tourlist = service.findTourlist(TourlistId);
		model.addAttribute("Tourlists", Tourlists);
		model.addAttribute("TourlistDetail", Tourlist);
		
		
		return "Tourlist/TourlistModify";
				//"redirect:/board/modify.do?boardId="+board.getBoardId(); //board값 받아오기 (modify)
	}
	
	@RequestMapping(value="modify.do", method=RequestMethod.POST)
	public String modify(Tourlist Tourlist) {
		service.modifyTourlist(Tourlist);
		
		return "redirect:/Tourlist/modify.do?TourlistId="+Tourlist.getBoardId();
	}
}
