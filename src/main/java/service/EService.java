package service;

import java.util.List;

import vo.ExerciseVO;

public interface EService {
	List<ExerciseVO> selectList(ExerciseVO vo); // selectList()
	ExerciseVO selectOne(ExerciseVO vo);
} // interface

