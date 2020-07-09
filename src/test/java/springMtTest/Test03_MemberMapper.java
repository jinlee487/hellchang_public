
package springMtTest;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class Test03_MemberMapper {
	@Autowired
	private SqlSession sqlsession;

	
	private static final String NS="green.mappers.memberMapper.";

	public void selectOneTest() {
		MemberVO vo = new MemberVO();
		// 존재하는 id 사용시 해당 Row return
		// 없는 id 사용시 null return
		vo.setId("bababa");
		vo=sqlsession.selectOne(NS+"selectOne",vo);
		if (vo!=null) 
			 System.out.println("** Find : "+vo);
		else System.out.println("** !Find : "+vo);
	} // selectOneTest()
	
	
	public void totalRowCountTest() {
		int count = sqlsession.selectOne(NS+"totalRowCount") ;
		System.out.println("** Member 전체 Record count : "+count);
	} // totalRowCountTest()
	@Test
	public void joinTest() {
		BCryptPasswordEncoder passwordEncoder = null;
		MemberVO vo = new MemberVO() ;
		vo.setId("test4@gmail.com");
		vo.setPassword("123!");
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));  
		vo.setName("test3");
		vo.setGender("M");
		vo.setNationNo("82");
		vo.setPhoneNo("000-0000-0000");
		vo.setAddress1("미금역");
		vo.setAddress2("그린컴퓨터");
		vo.setZipcode("35131");
		vo.setYy("20");
		vo.setMm("01");
		vo.setDd("01");
		vo.setPhone();
		vo.setAddress();
		vo.setBirthday();
		vo.setLevel("user");
		vo.setImage_path("resources/uploadImage/emptyImage.png");
		System.out.println("this is vo => " + vo);
		int cnt = sqlsession.insert(NS+"insert",vo) ;
		// 입력 오류시 => red Line (insert 처리가 완료 되지못함으로)
		if (cnt>0) 
			 System.out.println("***** join 성공 *****");
		else System.out.println("***** join 실패 *****");
		
	} // joinTest
	
	
	

}// class
