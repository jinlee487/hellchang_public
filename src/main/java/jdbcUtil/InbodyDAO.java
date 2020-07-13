package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.InbodyVO;

@Repository
public class InbodyDAO {
	@Autowired
	private SqlSession sqlsession;
	private static final String NS="green.mappers.inbodyMapper.";

	public List<InbodyVO> selectList(InbodyVO vo) {
		return sqlsession.selectList(NS+"selectList") ;
	} // selectList()
	
	public InbodyVO selectOne(InbodyVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
	public int insert(InbodyVO vo) { 
		return sqlsession.insert(NS+"insert", vo);
	}
	
	public int update(InbodyVO vo) { 
		return sqlsession.update(NS+"update", vo);
	}
	public int delete(InbodyVO vo) { 
		return sqlsession.update(NS+"delete", vo);
	}
}
