package kr.co.webproject.service;


import java.util.List;

import javax.xml.stream.events.Comment;

import kr.co.webproject.domain.Tourlist;


public interface TourlistService {
    

	void registerTourlist(Tourlist Tourlist);


	List<Tourlist> findAllTourlists();
	

	void modifyTourlist(Tourlist Tourlist);


	void removeTourlist(String boardId);
	

	void registerComment(Comment comment);
	

	void removeComment(String commentId);
}
