package jdbcUtil;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.HeartVO;
import vo.ReplyVO;
import vo.SaveVO;

@Repository
public class SaveDAO {
	static Connection cn = DBConnection.getConnection();
	static Statement st;
	static PreparedStatement pst;
	static ResultSet rs;
	String sql;
	
	@Autowired
	private SqlSession sqlsession;
	private static final String NS="green.mappers.saveMapper.";
	
	public List<SaveVO> findTest(SaveVO vo) {
		return sqlsession.selectList(NS+"findTest", vo);
	} // selectList()
	
	public List<SaveVO> selectList(SaveVO vo) {
		return sqlsession.selectList(NS+"selectList" , vo) ;
	} // selectList()
	
	public List<SaveVO> selectTList() {
		return sqlsession.selectList(NS+"selectTList") ;
	} // selectList()
	
	public List<SaveVO> allList(SaveVO vo) {
		return sqlsession.selectList(NS+"allList", vo) ;
	} // allList()
	
	public SaveVO selectOne(SaveVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
//	public SaveVO selectOne(SaveVO vo) {
//		sql = "select * from hellchang_schema_test.myRoutine where id=?";
//		ArrayList<SaveVO> list =new ArrayList<SaveVO>();
//		try {
//			pst = cn.prepareStatement(sql);
//			pst.setString(1, vo.getId());
//			rs = pst.executeQuery();
//			if (rs.next()) {
//				vo.setName(rs.getString(2));
//				vo.setTarget(rs.getString(3));
//				vo.setKg(rs.getInt(4));
//				vo.setRep(rs.getInt(5));
//				vo.setDate(rs.getString(6));
//				vo.setTitle(rs.getString(7));
//				vo.setShared(rs.getString(8));
//				vo.setUserName(rs.getString(9));
//				vo.setRownum(rs.getInt(10));
//				vo.setHeart(rs.getInt(11));
//				vo.setUserImage(rs.getString(12));
//			} else {
//				vo = null;
//			}
//		} catch (Exception e) {
//			System.out.println("** selectOne Exception=>" + e.toString());
//			vo = null;
//		}
//		return vo;
//	} // selectList()
	
	public List<SaveVO> blogTest() {
		return sqlsession.selectList(NS+"blogTest") ;
	} // blogTest() 筌ｌ꼷�벉 �룯�뜃由� 5揶쏉옙
	
	public List<SaveVO> blogTestS(SaveVO svo) {
		return sqlsession.selectList(NS+"blogTestS",svo) ;
	} // 占쎈뮞占쎄쾿嚥∽옙()
	
	public int saveMyRoutine(SaveVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine
	
	public int delMyRoutine(SaveVO vo) { 
		return sqlsession.delete(NS+"delMyRoutine", vo);
	} // saveMyRoutine
	
	public int heartUp(HeartVO hvo) { 
		return sqlsession.update(NS+"heartUp", hvo);
	}
	
	public HeartVO heartSelect(HeartVO hvo) {
		return sqlsession.selectOne(NS+"heartSelect", hvo);
	} // selectList()
	
	public int heartTest(HeartVO hvo) { 
		return sqlsession.insert(NS+"heartTest", hvo);
	} // heartTest()
	
	public int replyInsert(ReplyVO rvo) { 
		return sqlsession.insert(NS+"replyInsert", rvo);
	} // saveMyRoutine
	
	public ReplyVO replyResult(ReplyVO rvo) {
		return sqlsession.selectOne(NS+"replyResult", rvo);
	} // selectList()
	
	public List<SaveVO> myDetail(SaveVO vo) {
		return sqlsession.selectList(NS+"myDetail", vo) ;
	} 
	
	public List<SaveVO> routineModal(SaveVO vo) {
		return sqlsession.selectList(NS+"routineModal", vo);
	}
	
	public List<ReplyVO> showReply(ReplyVO rvo) {
		return sqlsession.selectList(NS+"showReply", rvo) ;
	} // 
	
} // class