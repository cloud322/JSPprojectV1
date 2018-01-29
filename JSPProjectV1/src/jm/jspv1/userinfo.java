package jm.jspv1;

public class userinfo {
	// 회원정보를 저장하는 자바빈즈 클래스
	//아이디- uid 비밀번호- pwd  이름- name 등록일- regdate
	//자바 빈즈 규치
	//1.private 로 선언된 맴버변수
	//2.생성자
	//3. setter getter
	private String uid;
	private String pwd;
	private String names;
	private String regdate;
	
	public userinfo() {
		// TODO Auto-generated constructor stub
	}
	
	public userinfo(String uid, String pwd, String names, String regdate) {
		super();
		this.uid = uid;
		this.pwd = pwd;
		this.names = names;
		this.regdate = regdate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "userinfo [uid=" + uid + ", pwd=" + pwd + ", names=" + names + ", regdate=" + regdate + "]";
	}
	
	
	
	
}

