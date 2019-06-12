package kr.co.wp.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.wp.domain.Article;

public interface ArticleService {

	boolean create(Article article);
	Article read(Integer articleNo);
	void update(Article article, Integer articleNo);
	void delete(Integer articleNo);
	List<Article> readAll();
	List<Article> readMe(String userId);
}
