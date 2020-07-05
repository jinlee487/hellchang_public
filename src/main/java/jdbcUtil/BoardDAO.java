package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.BoardVO;
import vo.PageVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession sqlsession ;
	private static final String NS ="green.mappers.boardMapper." ;

} // class
