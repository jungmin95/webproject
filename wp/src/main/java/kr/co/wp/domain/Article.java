package kr.co.wp.domain;

import java.sql.Date;

public class Article {

	private Integer articleNo;
	private String title;
	private String userId;
	private Date date;
	private String contents;
	private Integer viewcount;
	
	public Integer getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(Integer articleNo) {
		this.articleNo = articleNo;
	}
	public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public Date getDate() {
        return date;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public String getContents() {
        return contents;
    }
    public void setContents(String contents) {
        this.contents = contents;
    }

    public Integer getViewCount() {
        return viewcount;
    }
    public void setViewCount(Integer viewcount) {
        this.viewcount = viewcount;
    }
}
