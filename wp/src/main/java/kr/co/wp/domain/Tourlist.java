package kr.co.wp.domain;

import java.io.Serializable;

//import org.springframework.web.multipart.MultipartFile;

public class Tourlist /*implements Serializable*/{
	private int tournum; // ������ ��ȣ
	private String userid; // �������̵�
	private String tourimg; // ������ �̹���
	private String tourname; // �������̸�
	private String tourstory; // �������Ұ���
	private String tourtype; // ������ Ÿ��


	public int getTournum() {
		return tournum;
	}
	public void setTournum(int tournum) {
		this.tournum = tournum;
	}
	
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
}