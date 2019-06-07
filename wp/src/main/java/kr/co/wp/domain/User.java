package kr.co.wp.domain;

public class User {
	private String id;
	private String pw;
	private String name;
	private String sex;
	private Integer age;
	private Integer type;
	
	public User() {}
	
	public User(String id, String pw, String name, String sex, Integer age) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.sex = sex;
		this.age = age;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
}