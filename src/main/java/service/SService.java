package service;

import java.util.List;

import vo.HeartVO;
import vo.ReplyVO;
import vo.SaveVO;

public interface SService {
	
	List<SaveVO> selectList(SaveVO vo); // selectList()
	
	List<SaveVO> selectTList(); // selectList()
	List<SaveVO> selectTListbyID(SaveVO vo); // selectList()
	List<SaveVO> selectListbyID(SaveVO vo); // selectList()

	int saveMyRoutine(SaveVO vo); // saveMyRoutine
	
	int delMyRoutine(SaveVO vo); // delMyRoutine
	
	SaveVO selectOne(SaveVO vo);

	List<SaveVO> allList(SaveVO vo);

	List<SaveVO> findTest(SaveVO vo);
	
	List<SaveVO> blogTest();
	
	List<SaveVO> blogTestS(SaveVO svo);
	
	int heartUp(HeartVO hvo); // update
	
	HeartVO heartSelect(HeartVO hvo);
	
	int heartTest(HeartVO hvo); // saveMyRoutine
	
	int replyInsert(ReplyVO rvo); // reply
	
	ReplyVO replyResult(ReplyVO rvo);
	
	List<SaveVO> myDetail(SaveVO vo);
	
	List<SaveVO> routineModal(SaveVO vo);

	List<ReplyVO> showReply(ReplyVO rvo);
} // interface
