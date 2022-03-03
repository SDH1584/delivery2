package com.javaex.vo;

public class UserVo {
	// 필드
	private int no;
	private String id;
	private String password;
	private String hp;
	private String email;
	private String profile_img;
	private int user_code;
	
	//생성자
	public UserVo() {}
	
	public UserVo(int no, String id, String password, String hp, String email, String profile_img, int user_code) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.hp = hp;
		this.email = email;
		this.profile_img = profile_img;
		this.user_code = user_code;
	}

	//메소드 gs
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public int getUser_code() {
		return user_code;
	}

	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}

	//메소드 일반
	@Override
	public String toString() {
		return "UserVo [no=" + no + ", id=" + id + ", password=" + password + ", hp=" + hp + ", email=" + email
				+ ", profile_img=" + profile_img + ", user_code=" + user_code + "]";
	}
	
}
