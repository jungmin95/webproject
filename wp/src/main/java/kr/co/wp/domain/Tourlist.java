package kr.co.wp.domain;

import java.io.Serializable;

//import org.springframework.web.multipart.MultipartFile;

public class Tourlist /*implements Serializable*/{
	private int list_num; // 여행지 번호
	private String userid; // 유저아이디
	private String tourimg; // 여행지 이미지
	private String tourname; // 여행지이름
	private String tourstory; // 여행지소개글
	private String tourtype; // 여행지 타입


	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTourimg() {
		return tourimg;
	}
	public void setTourimg(String tourimg) {
		this.tourimg = tourimg;
	}
	public String getTourstory() {
		return tourstory;
	}
	public void setTourstory(String tourstory) {
		this.tourstory = tourstory;
	}
	public String getTourtype() {
		return tourtype;
	}
	public void setTourtype(String tourtype) {
		this.tourtype = tourtype;
	}
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	public int getList_num() {
		return list_num;
	}
	public void setList_num(int list_num) {
		this.list_num = list_num;
	}
}