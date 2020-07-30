package service;

import java.util.List;

import vo.BoardVO;
import vo.ExerciseVO;
import vo.RmVO;

public interface EService {
	List<ExerciseVO> selectList(ExerciseVO vo); // selectList()
	ExerciseVO selectOne(ExerciseVO vo);
	int saveMyRoutine(ExerciseVO vo); // saveMyRoutine
	int saveMyRM(RmVO rvo); // saveMyRoutine
	List<RmVO> RmList(RmVO rvo);
	List<RmVO> RmListB(RmVO rvo);
	List<RmVO> RmListA(RmVO rvo);
} // interface

