package kr.co.wp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.wp.domain.CommentVO;
import kr.co.wp.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
 
    @Resource(name="com.example.demo.board.service.CommentService")
    CommentService mCommentService;
    
    
    @RequestMapping("/list") //¥Ò±€ ∏ÆΩ∫∆Æ
    @ResponseBody
    private List<CommentVO> mCommentServiceList(Model model) throws Exception{
        
        return mCommentService.commentListService();
    }
    
    @RequestMapping("/insert") //¥Ò±€ ¿€º∫ 
    @ResponseBody
    private int mCommentServiceInsert(@RequestParam int bno, @RequestParam String content) throws Exception{
        
        CommentVO comment = new CommentVO();
        comment.setBno(bno);
        comment.setContent(content);
        comment.setWriter("test");  
        
        return mCommentService.commentInsertService(comment);
    }
    
    @RequestMapping("/update") //¥Ò±€ ºˆ¡§  
    @ResponseBody
    private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
        
        CommentVO comment = new CommentVO();
        comment.setCno(cno);
        comment.setContent(content);
        
        return mCommentService.commentUpdateService(comment);
    }
    
    @RequestMapping("/delete/{cno}") //¥Ò±€ ªË¡¶  
    @ResponseBody
    private int mCommentServiceDelete(@PathVariable int cno) throws Exception{
        
        return mCommentService.commentDeleteService(cno);
    }
    
}
