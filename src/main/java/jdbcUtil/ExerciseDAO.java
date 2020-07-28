package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.ExerciseVO;
import vo.RmVO;

@Repository
public class ExerciseDAO {
	@Autowired
	private SqlSession sqlsession;
	private static final String NS="green.mappers.exerciseMapper.";

	public List<ExerciseVO> selectList(ExerciseVO vo) {
		return sqlsession.selectList(NS+"selectList",vo) ;
	} // selectList()
	
	public ExerciseVO selectOne(ExerciseVO vo) {
		return sqlsession.selectOne(NS+"selectOne", vo);
	} // selectList()
	
	public int saveMyRoutine(ExerciseVO vo) { 
		return sqlsession.insert(NS+"saveMyRoutine", vo);
	} // saveMyRoutine
	
	public int saveMyRM(RmVO rvo) { 
		return sqlsession.insert(NS+"saveMyRM", rvo);
	} // saveMyRoutine
	
	public List<RmVO> RmList(RmVO rvo) {
		return sqlsession.selectList(NS+"RmList",rvo) ;
	} // selectList()

} // class
