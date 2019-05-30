package kr.co.wp.domain;

public class Survey {

	private int sNum;
	private String userId;
	
	private Integer[] survey;
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
	
	public Integer getSurvey(int index) {
		return survey[index];
	}
	
	public void setSurvey(Integer value, int index) {
		this.survey[index]=value;
	}
	
}
