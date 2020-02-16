package DB;

public class DBvar {
	private String name;//ÀÌ¸§_member
	private String id;//id_member;
	private String psw;//psw_member;
	private String email;//email_member;
	
	
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return name;
	}
	public void setId(String id) {
		this.id=id;
	}
	public String getId(){
		return id;
	}
	public void setPsw(String psw) {
		this.psw=psw;
	}
	public String getPsw() {
		return psw;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getEmail() {
		return email;
	}
	
}