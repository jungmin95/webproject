package kr.co.wp.service;

import java.util.List;

import kr.co.wp.domain.Article;

public interface ArticleService {

	boolean create(Article article);
	Article read(Integer articleNo);
	void update(Integer articleNo);
	void delete(Integer articleNo);
	List<Article> readAll();
	List<Article> readMe(String userId);
}
