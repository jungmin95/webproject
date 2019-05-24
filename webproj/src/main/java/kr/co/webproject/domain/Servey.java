package kr.co.webproject.domain;

public class Servey {

	private int sNum;
	private String userId;
	
	private Integer[] servey;
	/*private int s2;
	private int s3;
	private int s4;
	private int s5;
	private int s6;
	private int s7;
	private int s8;
	*/
	
	public String getUserId() {
		return userId;
	}
	
	public Integer getServey(int index) {
		return servey[index];
	}
	
	public void setServey(Integer servey, int index) {
		this.servey[index]=servey;
	}
	
}
