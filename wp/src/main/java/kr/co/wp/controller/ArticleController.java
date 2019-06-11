package kr.co.wp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wp.domain.Article;
import kr.co.wp.domain.User;
import kr.co.wp.service.ArticleService;
import kr.co.wp.service.MemberService;

@Controller
@RequestMapping(value="article")
public class ArticleController {

	@Autowired
		private ArticleService service;
	
	@Autowired
		private MemberService userservice;
	
	@RequestMapping(value ="regist.do", method= RequestMethod.POST)
	public String regist(HttpSession session, Article article, @RequestParam("title") String title, @RequestParam("contents") String contents) {
		
		article.setUserId((String)session.getAttribute("user_id"));
		article.setTitle(title);
		article.setContents(contents);		   
		//System.out.println(article.getUserId());

		service.create(article);
		
		return "redirect:/article/list.do";
	}
	
	@RequestMapping(value ="list.do")
	public ModelAndView list() {
		
		List<Article> list = service.readAll();
		ModelAndView mav = new ModelAndView("board/all_board");
		mav.addObject("Article",list);
	
		//System.out.println(list);
		return mav;
	}
 	
	@RequestMapping(value ="mylist.do", method= RequestMethod.GET)
	public ModelAndView mylist(HttpSession session) {
		
		//System.out.println(session.getAttribute("user_id"));
		List<Article> list = service.readMe((String)session.getAttribute("user_id"));
		ModelAndView mav = new ModelAndView("board/my_board");
		mav.addObject("Article",list);
			
		return mav;
	}
	
	@RequestMapping(value ="read.do", method= RequestMethod.GET)
	public String read(Integer articleNo, Model model) {
		
		Article article = service.read(articleNo);
		//System.out.println(article); 
		model.addAttribute("Article", article);

		User user =	userservice.find(article.getUserId());
		model.addAttribute("User", user);
		
		return "board/detail";
	}
}
