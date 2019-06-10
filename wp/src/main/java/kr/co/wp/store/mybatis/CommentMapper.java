package kr.co.wp.store.mybatis;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.wp.domain.CommentVO;

	@Repository("com.example.demo.comment.mapper.CommentMapper")
	public interface CommentMapper {
	    // ´ñ±Û °³¼ö
	    public int commentCount() throws Exception;
	 
	    // ´ñ±Û ¸ñ·Ï
	    public List<CommentVO> commentList() throws Exception;
	 
	    // ´ñ±Û ÀÛ¼º
	    public int commentInsert(CommentVO comment) throws Exception;
	    
	    // ´ñ±Û ¼öÁ¤
	    public int commentUpdate(CommentVO comment) throws Exception;
	 
	    // ´ñ±Û »èÁ¦
	    public int commentDelete(int cno) throws Exception;
	 
	}
