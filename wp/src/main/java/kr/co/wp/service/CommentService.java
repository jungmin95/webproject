package kr.co.wp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.wp.domain.CommentVO;
import kr.co.wp.store.mybatis.CommentMapper;

@Service("com.example.demo.board.service.CommentService")
public class CommentService {
 
    @Resource(name="com.example.demo.board.mapper.CommentMapper")
    CommentMapper mCommentMapper;
    
    public List<CommentVO> commentListService() throws Exception{
        
        return mCommentMapper.commentList();
    }
    
    public int commentInsertService(CommentVO comment) throws Exception{
        
        return mCommentMapper.commentInsert(comment);
    }
    
    public int commentUpdateService(CommentVO comment) throws Exception{
        
        return mCommentMapper.commentUpdate(comment);
    }
    
    public int commentDeleteService(int cno) throws Exception{
        
        return mCommentMapper.commentDelete(cno);
    }
}