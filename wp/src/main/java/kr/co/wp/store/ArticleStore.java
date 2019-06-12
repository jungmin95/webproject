package kr.co.wp.store;

import java.util.List;

import kr.co.wp.domain.Article;

public interface ArticleStore {

	boolean create(Article article);
	Article read(Integer articleNo);
	void delete(Integer articleNo);
	Article update(Article article, Integer articleNo);
	List<Article> readAll();
	List<Article> readMe(String userId);
}
