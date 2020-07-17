package service;

import java.util.List;

import vo.SaveVO;

public interface SService {
	
	List<SaveVO> selectList(SaveVO vo); // selectList()
	
	List<SaveVO> selectTList(); // selectList()
	
	int saveMyRoutine(SaveVO vo); // saveMyRoutine
	
	int delMyRoutine(SaveVO vo); // delMyRoutine
	
	SaveVO selectOne(SaveVO vo);

	List<SaveVO> allList(SaveVO vo);

	List<SaveVO> blogTest();
} // interface

