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
	private String lev;
	private String birthd;
	private int point;
	private double weight;
	private String rid;
	
	private String uploadfile; // table의 컬럼과 동일 
	private MultipartFile uploadfilef;  // form의 inputTag의 값 전달받기위함
	/* => MultipartFile Type은 form으로부터 UpLoad를 위해  필요한 타입이며
    		실제 DB 에는 경로와 화일명을 String Type 으로 보관함  
    		그러므로 저장 할 때 이에 대한 처리가 필요함
	   => 별도의 String Type uploadfile 필드를 추가 하여 사용함 */
	
	public String getUploadfile() { return uploadfile; }
	public MultipartFile getUploadfilef() {
		return uploadfilef;
	}
	public void setUploadfilef(MultipartFile uploadfilef) {
		this.uploadfilef = uploadfilef;
	}
	public void setUploadfile(String uploadfile) { this.uploadfile = uploadfile; }
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public String getLev() { return lev; }
	public void setLev(String lev) { this.lev = lev; }
	public String getBirthd() { return birthd; }
	public void setBirthd(String birthd) { this.birthd = birthd; }
	public int getPoint() { return point; }
	public void setPoint(int point) { this.point = point; }
	public double getWeight() { return weight; }
	public void setWeight(double weight) { this.weight = weight; }
	public String getRid() { return rid; }
	public void setRid(String rid) { this.rid = rid; }
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", lev=" + lev + ", birthd="
				+ birthd + ", point=" + point + ", weight=" + weight + ", rid=" + rid + ", uploadfile=" + uploadfile
				+ ", uploadfilef=" + uploadfilef + "]";
	}
	
} // MemberVO
