package jdbcUtil;


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
	
	public List<SaveVO> allList(SaveVO vo) {
		return sqlsession.selectList(NS+"allList", vo) ;
	} // allList()
	
	public SaveVO selectOne(SaveVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
	public List<SaveVO> blogTest() {
		return sqlsession.selectList(NS+"blogTest") ;
	} // selectList()
	
	public int saveMyRoutine(SaveVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine

} // class
