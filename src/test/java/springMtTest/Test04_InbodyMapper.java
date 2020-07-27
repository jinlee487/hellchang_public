
package springMtTest;


import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import java.math.BigDecimal;
import java.math.RoundingMode;
import vo.MemberVO;
import vo.InbodyPageVO;
import vo.InbodyVO;
import jdbcUtil.InbodyDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class Test04_InbodyMapper {
	@Autowired
	private SqlSession sqlsession;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	private static final String NS="green.mappers.inbodyMapper.";

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
	public void joinTest() {
		int cnt=0;
		for (int i=0;i<99;i++) {
			String temp = "test" + Integer.toString(i);
			
			MemberVO vo = new MemberVO() ;
			vo.setId(temp+"@gmail.com");
			vo.setPassword("123!");
			vo.setPassword(passwordEncoder.encode(vo.getPassword()));  
			vo.setName(temp);
			vo.setGender("M");
			vo.setNationNo("82");
			vo.setPhoneNo("000-0000-0000");
			vo.setAddress1("미금역");
			vo.setAddress2("그린컴퓨터");
			vo.setZipcode("35131");
			vo.setYy("2000");
			vo.setMm("01");
			vo.setDd("01");
			vo.setPhone();
			vo.setAddress();
			vo.setBirthday();
			vo.setLevel("user");
			vo.setImage_path("resources/uploadImage/emptyImage.png");
			System.out.println("for i => " +i + "\nthis is vo => " + vo);
			cnt += sqlsession.insert(NS+"insert",vo);
		}
		System.out.println("cnt => " + cnt);
		// 입력 오류시 => red Line (insert 처리가 완료 되지못함으로)
		if (cnt>0) 
			 System.out.println("***** join 성공 *****");
		else System.out.println("***** join 실패 *****");
		
	} // joinTest
	
	@Test	
	public void insertInbody() {
		int cnt=0;
		String d;
		for (int i=1;i<13;i++) {
			InbodyVO vo = new InbodyVO() ;
			if (i<10) d = "2020" +"/0"+ i + "/" + "01/" +"17:30";
			else d = "2020" +"/"+ i + "/" + "01 " +"17:30";
						
			vo.setId("admin@gmail.com");
			//vo.setId("banana@naver.com");

			vo.setDate_date(d);
			vo.setDate_string(d);
			vo.setSeq(i);
			vo.setWeight(85-i);
			vo.setWeight_under(59.2);
			vo.setWeight_over(80.2);
			vo.setMuscle_mass(25.4+i);
			vo.setMuscle_mass_under(29.9);
			vo.setMuscle_mass_over(36.5);
			vo.setFat_mass(10-0.1*i);
			vo.setFat_mass_under(8.3);
			vo.setFat_mass_over(16.1);
			vo.setBmi(30.1-0.5*i);
			vo.setBmi_under(18.3);
			vo.setBmi_over(23);
			vo.setPbf(30-0.5*i);
			vo.setPbf_under(18);
			vo.setPbf_over(28);
			vo.setVfl(10-0.1*i);
			vo.setVfl_under(5);
			vo.setVfl_over(10);
	        BigDecimal bd = new BigDecimal(88.362 + (13.397 * vo.getWeight()) + (4.799 *178) - (5.677 *28)).setScale(2, RoundingMode.HALF_UP);
			vo.setBmr(bd.doubleValue());
			System.out.println("for i => " +i + "\nthis is vo => " + vo);
			cnt += sqlsession.insert(NS+"insert",vo);
		//	cnt+=1;
		}
		System.out.println("cnt => " + cnt);
		// 입력 오류시 => red Line (insert 처리가 완료 되지못함으로)
		if (cnt>0) 
			 System.out.println("***** join 성공 *****");
		else System.out.println("***** join 실패 *****");
		
	} // joinTest
	
	public void listtest() {
		InbodyPageVO pvo = new InbodyPageVO() ;
		pvo.setId("admin@gmail.com");
		pvo.setList(sqlsession.selectList(NS+"selectPageList", pvo));
		System.out.println("thsi is pvo => " + pvo.getList().toString());
	}
	
	

}// class
