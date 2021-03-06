package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MPageVO;
import vo.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlsession;
	public int imgUpdate;
	private static final String NS="green.mappers.memberMapper.";

	public List<MemberVO> selectList() {
		return sqlsession.selectList(NS+"selectList") ;
	} // selectList()
	
	public MemberVO selectOne(MemberVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
	public int insert(MemberVO vo) { 
		return sqlsession.insert(NS+"insert", vo);
	}
	
	public int update(MemberVO vo) { 
		return sqlsession.update(NS+"update", vo);
	}
	
	public int imgUpdate(MemberVO vo) { 
		return sqlsession.update(NS+"imgUpdate", vo);
	}
	
	public int delete(MemberVO vo) {
		return sqlsession.delete(NS+"delete", vo) ;
	}

} // class
