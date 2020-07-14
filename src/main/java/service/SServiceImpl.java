package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.SaveDAO;
import vo.MemberVO;
import vo.SaveVO;


@Service
public class SServiceImpl implements SService {
	@Autowired
	SaveDAO dao;

	@Override
	public SaveVO selectOne(SaveVO vo) {
		return dao.selectOne(vo);
	} // selectOne
	
	@Override
	public int saveMyRoutine(SaveVO vo) {  
		return dao.saveMyRoutine(vo);  // 처리된 row 갯수 return	 
	} // insert
	
} // class
