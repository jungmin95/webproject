package kr.co.wp.store.mybatis;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.wp.domain.CommentVO;

	@Repository("com.example.demo.comment.mapper.CommentMapper")
	public interface CommentMapper {
	    // ��� ����
	    public int commentCount() throws Exception;
	 
	    // ��� ���
	    public List<CommentVO> commentList() throws Exception;
	 
	    // ��� �ۼ�
	    public int commentInsert(CommentVO comment) throws Exception;
	    
	    // ��� ����
	    public int commentUpdate(CommentVO comment) throws Exception;
	 
	    // ��� ����
	    public int commentDelete(int cno) throws Exception;
	 
	}
