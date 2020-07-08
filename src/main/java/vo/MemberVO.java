package vo;

import org.springframework.web.multipart.MultipartFile;

// ** 공통모듈 구현 1.
// VO (Value Object, DTO: Data Transfer Object) 
// => member 테이블의 구조
// => 자료를 주고 받는 통로 역할

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String phone;
	private String address;
	private String birthday;
	private String level;
	
	private String image_path; // table의 컬럼과 동일 
	private MultipartFile image_file;  // form의 inputTag의 값 전달받기위함
	/* => MultipartFile Type은 form으로부터 UpLoad를 위해  필요한 타입이며
    		실제 DB 에는 경로와 화일명을 String Type 으로 보관함  
    		그러므로 저장 할 때 이에 대한 처리가 필요함
	   => 별도의 String Type uploadfile 필드를 추가 하여 사용함 */
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getGender() {return gender;}
	public void setGender(String gender) {this.gender = gender;}
	public String getPhone() {return phone;}
	public void setPhone(String phone) {this.phone = phone;}
	public String getAddress() {return address;}
	public void setAddress(String address) {this.address = address;}
	public String getBirthday() {return birthday;}
	public void setBirthday(String birthday) {this.birthday = birthday;}
	public String getLevel() {return level;}
	public void setLevel(String level) {this.level = level;}
	public String getImage_path() { return image_path; }
	public void setImage_path(String image_path) { this.image_path = image_path; }
	public MultipartFile getImage_file() {return image_file;}
	public void setImage_file(MultipartFile image_file) {this.image_file = image_file;}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", phone="
				+ phone + ", address=" + address + ", birthday=" + birthday + ", level=" + level + ", image_path="
				+ image_path + "]";
	}
	
} // MemberVO
