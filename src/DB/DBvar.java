package DB;

public class DBvar {
	//table이름 -> member
	private String name;//name_member
	private String id;//id_member;
	private String psw;//psw_member;
	private String email;//email_member;
	
	//table이름 -> result_list
	private String location;//location_result_list
	private String country; //country_result_list
	private String mood; //mood_result_list
	private String nature; //nature_result_list
	private String activity;//activity_result_list
	
	
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
	public void setLocation(String location) {
		this.location=location;
	}
	public String getLocation() {
		return location;
	}
	public void setCountry(String country) {
		this.country=country;
	}
	public String getCountry() {
		return country;
	}
	public void setMood(String mood) {
		this.mood=mood;
	}
	public String getMood() {
		return mood;
	}
	public void setNature(String nature) {
		this.nature=nature;
	}
	public String getNature() {
		return nature;
	}
	public void setActivity(String activity) {
		this.activity=activity;
	}
	public String getActivity() {
		return activity;
	}
}