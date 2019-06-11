package kr.co.wp.service.logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wp.domain.Article;
import kr.co.wp.service.ArticleService;
import kr.co.wp.store.ArticleStore;

@Service
public class ArticleServiceLogic implements ArticleService {
	
	@Autowired
	private ArticleStore store;
	
	@Override
	public boolean create(Article article) {
		
		return store.create(article);
	}

	@Override
	public Article read(Integer articleNo) {
		
		return store.read(articleNo);
	}

	@Override
	public void update(Integer articleNo) {
		
	}

	@Override
	public void delete(Integer articleNo) {
		
	}

	@Override
	public List<Article> readAll() {
		
		return store.readAll();
	}

	@Override
	public List<Article> readMe(String userId) {

		return store.readMe(userId);
	}

}
