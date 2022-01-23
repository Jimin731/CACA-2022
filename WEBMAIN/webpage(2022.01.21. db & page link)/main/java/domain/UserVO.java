package domain;

// DB의 한 테이블에 존재하는 컬럼들을 멤버 변수로 작성하여, 테이블의 컬럼값을 자바에서 객체로 다루기 위하여 사용.
// 즉, DB안에 있는 데이터를 변수, 구조체 형식으로 controller에서 사용할 수 있게 가공하는 역할. (DB 담을 그릇). 모델 기능

public class UserVO {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_email;
	private String about;
	private String contact;
	
	// get과 set은 한쌍임. get은 가져가도록 놓
	
	/**
	 * @return the user_id
	 */
	public String getUser_id() {
		return user_id;
	}
	/**
	 * @param user_id the user_id to set
	 */
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	/**
	 * @return the user_pw
	 */
	public String getUser_pw() {
		return user_pw;
	}
	/**
	 * @param user_pw the user_pw to set
	 */
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	/**
	 * @return the user_name
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * @param user_name the user_name to set
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	/**
	 * @return the user_email
	 */
	public String getUser_email() {
		return user_email;
	}
	/**
	 * @param user_email the user_email to set
	 */
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	/**
	 * @return the about
	 */
	public String getAbout() {
		return about;
	}
	/**
	 * @param about the about to set
	 */
	public void setAbout(String about) {
		this.about = about;
	}
	/**
	 * @return the contact
	 */
	public String getContact() {
		return contact;
	}
	/**
	 * @param contact the contact to set
	 */
	public void setContact(String contact) {
		this.contact = contact;
	}
}