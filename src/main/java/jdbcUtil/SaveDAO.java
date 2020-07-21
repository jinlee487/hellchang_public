package jdbcUtil;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SaveVO;

@Repository
public class SaveDAO {
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
	
	public List<SaveVO> blogTest() {
		return sqlsession.selectList(NS+"blogTest") ;
	} // blogTest() 처음 초기 5개
	
	public List<SaveVO> blogTestS(SaveVO svo) {
		return sqlsession.selectList(NS+"blogTestS",svo) ;
	} // 스크롤()
	
	public int saveMyRoutine(SaveVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine
	
	public int delMyRoutine(SaveVO vo) { 
		return sqlsession.delete(NS+"delMyRoutine", vo);
	} // saveMyRoutine
	
	
} // class
