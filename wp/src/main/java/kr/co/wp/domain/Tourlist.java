package kr.co.wp.domain;

import java.io.Serializable;

//import org.springframework.web.multipart.MultipartFile;

public class Tourlist /*implements Serializable*/{
	private int list_num; // ������ ��ȣ
	private String userid; // �������̵�
	private String tourimg; // ������ �̹���
	private String tourname; // �������̸�
	private String tourstory; // �������Ұ���
	private String tourtype; // ������ Ÿ��


	
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