package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.SaveDAO;
import vo.PageVO;
import vo.SPageVO;
import vo.SaveVO;


@Service
public class SServiceImpl implements SService {
	@Autowired
	SaveDAO dao;
	
	@Override
	public List<SaveVO> selectTList() {
		return dao.selectTList() ;
	} // selectList()

	@Override
	public List<SaveVO> findTest(SaveVO vo) {
		return dao.findTest(vo) ;
	} // selectList()
	
	@Override
	public List<SaveVO> blogTest() {
		return dao.blogTest() ;
	} // selectList()
	
	@Override
	public List<SaveVO> blogTestS(SaveVO svo) {
		return dao.blogTestS(svo) ;
	} // selectList()
	
	@Override
	public List<SaveVO> allList(SaveVO vo) {
		return dao.allList(vo) ;
	} // selectList()
	
	@Override
	public List<SaveVO> selectList(SaveVO vo) {
		return dao.selectList(vo) ;
	} // selectList()
	

	
	@Override
	public SaveVO selectOne(SaveVO vo) {
		return dao.selectOne(vo);
	} // selectOne
	
	@Override
	public int saveMyRoutine(SaveVO vo) {  
		return dao.saveMyRoutine(vo);  // 처리된 row 갯수 return	 
	} // insert

	@Override
	public int delMyRoutine(SaveVO vo) {
		return dao.delMyRoutine(vo);
	}
	
	
} // class