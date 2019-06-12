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
//		Integer count = article.getViewCount();
//		System.out.println(article.getViewCount());
//		count++;
//		article.setViewCount(count);
		
		model.addAttribute("Article", article);

		User user =	userservice.find(article.getUserId());
		model.addAttribute("User", user);
		
		return "board/detail";
	}
	
	@RequestMapping(value ="myread.do", method= RequestMethod.GET)
	public String myread(Integer articleNo, Model model) {
		
		Article article = service.read(articleNo);
		
		model.addAttribute("Article", article);

		User user =	userservice.find(article.getUserId());
		model.addAttribute("User", user);
		
		return "board/mydetail";
	}
	
	@RequestMapping(value ="remove.do", method= RequestMethod.GET)
	public String remove(Integer articleNo) {
		
		service.delete(articleNo);
		
		return "redirect:/article/list.do";
	}
	
	@RequestMapping(value ="modify.do", method= RequestMethod.GET)
	public String modify(Integer articleNo, Model model) {
		
		//System.out.println(articleNo);
		Article article = service.read(articleNo);
		
		model.addAttribute("Article", article);
		
		return "board/modify";
	}
	
	@RequestMapping(value ="update.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String update(Integer articleNo, @RequestParam("title") String title, @RequestParam("contents") String contents) {
		
		Article article = service.read(articleNo);
		
		//System.out.println(title);
		article.setTitle(title);
		article.setContents(contents);
		
		service.update(article, articleNo);
		
		return "redirect:/article/read.do?articleNo="+articleNo;
	}
	
	@RequestMapping(value ="mymodify.do", method= RequestMethod.GET)
	public String mymodify(Integer articleNo, Model model) {
		
		Article article = service.read(articleNo);
		model.addAttribute("Article", article);
		
		return "board/mymodify";
	}
	
	@RequestMapping(value ="myupdate.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String myupdate(Integer articleNo, @RequestParam("title") String title, @RequestParam("contents") String contents) {
		
		Article article = service.read(articleNo);
		article.setTitle(title);
		article.setContents(contents);
		
		service.update(article, articleNo);
		
		return "redirect:/article/myread.do?articleNo="+articleNo;
	}
	
}
