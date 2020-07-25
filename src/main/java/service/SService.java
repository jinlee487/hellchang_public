package service;

import java.util.List;

import vo.HeartVO;
import vo.SaveVO;

public interface SService {
	
	List<SaveVO> selectList(SaveVO vo); // selectList()
	
	List<SaveVO> selectTList(); // selectList()
	
	int saveMyRoutine(SaveVO vo); // saveMyRoutine
	
	int delMyRoutine(SaveVO vo); // delMyRoutine
	
	SaveVO selectOne(SaveVO vo);

	List<SaveVO> allList(SaveVO vo);

	List<SaveVO> findTest(SaveVO vo);
	
	List<SaveVO> blogTest();
	
	List<SaveVO> blogTestS(SaveVO svo);
	
	int heartUp(SaveVO vo); // update
	
	SaveVO heartSelect(SaveVO vo);
	
} // interface

