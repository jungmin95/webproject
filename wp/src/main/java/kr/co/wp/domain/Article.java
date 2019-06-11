package kr.co.wp.domain;

import java.sql.Date;

public class Article {

	private Integer articleNo;
	private String title;
	private String userId;
	private Date date;
	private String contents;
	
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
//    public Integer getBoardType() {
//        return boardType;
//    }
//    public void setBoardType(Integer boardType) {
//        this.boardType = boardType;
//    }
	
}
