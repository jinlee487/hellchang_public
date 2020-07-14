package service;

import java.util.List;

import vo.SaveVO;

public interface SService {
	
	List<SaveVO> selectList(SaveVO vo); // selectList()
	
	int saveMyRoutine(SaveVO vo); // saveMyRoutine
	
	SaveVO selectOne(SaveVO vo);

	List<SaveVO> allList(SaveVO vo);

} // interface

