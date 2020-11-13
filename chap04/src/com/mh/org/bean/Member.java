package com.mh.org.bean;

public class Member {
	private String idx;
	private String pname;
	private String pgender;
	private String pid;
	private String ppwd;
	private String pcpwd;
	private String paddr;
	private String pphone;
	private String pemail;
	private String phobby;
	
	// alt + shift + s + r getter setter
	// alt + shift + s + o 생성자  
	// alt + shift + s + s toString 함수 생성
	
	
	
	public Member() {}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPgender() {
		return pgender;
	}

	public void setPgender(String pgender) {
		this.pgender = pgender;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPpwd() {
		return ppwd;
	}

	public void setPpwd(String ppwd) {
		this.ppwd = ppwd;
	}

	public String getPcpwd() {
		return pcpwd;
	}

	public void setPcpwd(String pcpwd) {
		this.pcpwd = pcpwd;
	}

	public String getPaddr() {
		return paddr;
	}

	public void setPaddr(String paddr) {
		this.paddr = paddr;
	}

	public String getPphone() {
		return pphone;
	}

	public void setPphone(String pphone) {
		this.pphone = pphone;
	}

	public String getPemail() {
		return pemail;
	}

	public void setPemail(String pemail) {
		this.pemail = pemail;
	}

	public String getPhobby() {
		return phobby;
	}

	public void setPhobby(String phobby) {
		this.phobby = phobby;
	}

	public Member(String idx, String pname, String pgender, String pid, String ppwd, String pcpwd, String paddr,
			String pphone, String pemail, String phobby) {
		super();
		this.idx = idx;
		this.pname = pname;
		this.pgender = pgender;
		this.pid = pid;
		this.ppwd = ppwd;
		this.pcpwd = pcpwd;
		this.paddr = paddr;
		this.pphone = pphone;
		this.pemail = pemail;
		this.phobby = phobby;
	}

	@Override
	public String toString() {
		return "Member [idx=" + idx + ", pname=" + pname + ", pgender=" + pgender + ", pid=" + pid + ", ppwd=" + ppwd
				+ ", pcpwd=" + pcpwd + ", paddr=" + paddr + ", pphone=" + pphone + ", pemail=" + pemail + ", phobby="
				+ phobby + "]";
	}
	
	
}
