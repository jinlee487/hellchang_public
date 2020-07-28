package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.ExerciseDAO;
import vo.BoardVO;
import vo.ExerciseVO;
import vo.MemberVO;
import vo.RmVO;


@Service
public class EServiceImpl implements EService {
	@Autowired
	ExerciseDAO dao;

	@Override
	public List<ExerciseVO> selectList(ExerciseVO vo) {
		return dao.selectList(vo) ;
	}
	@Override
	public ExerciseVO selectOne(ExerciseVO vo) {
		return dao.selectOne(vo);
	} // selectOne

	@Override
	public int saveMyRoutine(ExerciseVO vo) {  
		return dao.saveMyRoutine(vo);  // 泥섎━�맂 row 媛��닔 return	 
	} // insert
	
	@Override
	public int saveMyRM(RmVO rvo) {  
		return dao.saveMyRM(rvo);  // 泥섎━�맂 row 媛��닔 return	 
	} // insert
	@Override
	public List<RmVO> RmList(RmVO rvo) {
		return dao.RmList(rvo) ;
	}
} // class
