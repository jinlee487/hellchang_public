package jdbcUtil;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MPageVO;
import vo.SaveVO;

@Repository
public class SaveDAO {
	@Autowired
	private SqlSession sqlsession;
	private static final String NS="green.mappers.saveMapper.";
	
	public List<SaveVO> selectList(SaveVO vo) {
		return sqlsession.selectList(NS+"selectList" , vo) ;
	} // selectList()
	
	public List<SaveVO> allList(SaveVO vo) {
		return sqlsession.selectList(NS+"allList", vo) ;
	} // selectList()
	
	public SaveVO selectOne(SaveVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
		
	
	public int saveMyRoutine(SaveVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine

} // class
