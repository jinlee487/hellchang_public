package jdbcUtil;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberVO;
import vo.SaveVO;

@Repository
public class SaveDAO {
	@Autowired
	private SqlSession sqlsession;
	private static final String NS="green.mappers.saveMapper.";
	
	
	public SaveVO selectOne(SaveVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
	
	public int saveMyRoutine(SaveVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine

} // class
