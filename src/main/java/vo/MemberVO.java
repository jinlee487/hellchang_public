package vo;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private String gender;
	private String phone;
	private String nationNo;
	private String phoneNo; 
	private String address;
	private String zipcode;
	private String address1; 
	private String address2; 
	private String birthday;
	private String yy;
	private String mm;
	private String dd;
	private String level;	
	private String image_path;        // db와 동일한 이름
	private MultipartFile image_file; // form에서 저장하는 image 
	private boolean email_login=false;

	public boolean getEmail_login() {
		return email_login;
	}
	public void setEmail_login(boolean email_login) {
		this.email_login = email_login;
	}
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getGender() {return gender;}
	public void setGender(String gender) {this.gender = gender;}
	
	public String getPhone() {return phone;}
	public void setPhone() {this.phone = (getNationNo() +"-"+getPhoneNo());}
	public String getNationNo() {return nationNo;}
	public void setNationNo(String nationNo) {this.nationNo = nationNo;}
	public String getPhoneNo() {return phoneNo;}
	public void setPhoneNo(String phoneNo) {this.phoneNo = phoneNo;}
	
	public String getAddress() {return address;}	
	public void setAddress() {this.address = (getAddress1()+" "+getAddress2()+" "+getZipcode());}
	public String getZipcode() {return zipcode;}
	public void setZipcode(String zipcode) {this.zipcode = zipcode;}
	public String getAddress1() {return address1;}
	public void setAddress1(String address1) {this.address1 = address1;}
	public String getAddress2() {return address2;}
	public void setAddress2(String address2) {this.address2 = address2;}
	
	public String getBirthday() {return birthday;}
	public void setBirthday() {this.birthday = getYy()+"/"+getMm()+"/"+getDd();}
	public String getYy() {	return yy;}
	public void setYy(String yy) {this.yy = yy;}
	public String getMm() {return mm;}
	public void setMm(String mm) {this.mm = mm;}
	public String getDd() {return dd;}
	public void setDd(String dd) {this.dd = dd;}
	
	public String getLevel() {return level;}
	public void setLevel(String level) {this.level = level;}

	public String getImage_path() { return image_path; }
	public void setImage_path(String image_path) { this.image_path = image_path; }
	public MultipartFile getImage_file() {return image_file;}
	public void setImage_file(MultipartFile image_file) {this.image_file = image_file;}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", phone="
				+ phone + ", nationNo=" + nationNo + ", phoneNo=" + phoneNo + ", address=" + address + ", zipcode="
				+ zipcode + ", address1=" + address1 + ", address2=" + address2 + ", birthday=" + birthday + ", yy="
				+ yy + ", mm=" + mm + ", dd=" + dd + ", level=" + level + ", image_path=" + image_path + ", image_file="
				+ image_file + ", email_login=" + email_login + "]";
	}

	

	
} // MemberVO


//USING LOMBOK JIHWAN!
//package vo;
//
//import org.springframework.web.multipart.MultipartFile;
//
//import lombok.Data;
//import lombok.ToString;
//
//// ** 공통모듈 구현 1.
//// VO (Value Object, DTO: Data Transfer Object) 
//// => member 테이블의 구조
//// => 자료를 주고 받는 통로 역할
//
//@Data
//@ToString
//public class MemberVO {
//	private String id;
//	private String password;
//	private String name;
//	private String gender;
//	private String phone;
//	private String address;
//	private String birthday;

////	private String id;
////	private String password;
////	private String name;
////	private String gender;
////	private String phone;
////	private String address;
////	private String birthday;
////	private String image_path;
////	private MultipartFile image_file;
////	public String getId() {
////		return id;
////	}
////	public void setId(String id) {
////		this.id = id;
////	}
////	public String getPassword() {
////		return password;
////	}
////	public void setPassword(String password) {
////		this.password = password;
////	}
////	public String getName() {
////		return name;
////	}
////	public void setName(String name) {
////		this.name = name;
////	}
////	public String getGender() {
////		return gender;
////	}
////	public void setGender(String gender) {
////		this.gender = gender;
////	}
////	public String getPhone() {
////		return phone;
////	}
////	public void setPhone(String phone) {
////		this.phone = phone;
////	}
////	public String getAddress() {
////		return address;
////	}
////	public void setAddress(String address) {
////		this.address = address;
////	}
////	public String getBirthday() {
////		return birthday;
////	}
////	public void setBirthday(String birthday) {
////		this.birthday = birthday;
////	}
////	public String getImage_path() {
////		return image_path;
////	}
////	public void setImage_path(String image_path) {
////		this.image_path = image_path;
////	}
////	public MultipartFile getImage_file() {
////		return image_file;
////	}
////	public void setImage_file(MultipartFile image_file) {
////		this.image_file = image_file;
////	}
////	@Override
////	public String toString() {
////		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", phone="
////				+ phone + ", address=" + address + ", birthday=" + birthday + ", image_path=" + image_path
////				+ ", image_file=" + image_file + "]";
////	}

//	public String getId() {return id;}
//	public void setId(String id) {this.id = id;}
//	public String getPassword() {return password;}
//	public void setPassword(String password) {this.password = password;}
//	public String getName() {return name;}
//	public void setName(String name) {this.name = name;}
//	public String getGender() {return gender;}
//	public void setGender(String gender) {this.gender = gender;}
//	public String getPhone() {return phone;}
//	public void setPhone(String phone) {this.phone = phone;}
//	public String getAddress() {return address;}
//	public void setAddress(String address) {this.address = address;}
//	public String getBirthday() {return birthday;}
//	public void setBirthday(String birthday) {this.birthday = birthday;}
//	public String getLevel() {return level;}
//	public void setLevel(String level) {this.level = level;}
//	public String getImage_path() { return image_path; }
//	public void setImage_path(String image_path) { this.image_path = image_path; }
//	public MultipartFile getImage_file() {return image_file;}
//	public void setImage_file(MultipartFile image_file) {this.image_file = image_file;}
//	
//	@Override
//	public String toString() {
//		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", gender=" + gender + ", phone="
//				+ phone + ", address=" + address + ", birthday=" + birthday + ", level=" + level + ", image_path="
//				+ image_path + "]";
//	}
//	
//} // MemberVO
