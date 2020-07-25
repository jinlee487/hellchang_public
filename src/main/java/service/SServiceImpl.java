package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.SaveDAO;
import vo.HeartVO;
import vo.MemberVO;
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
		return dao.saveMyRoutine(vo);  // 泥섎━�맂 row 媛��닔 return	 
	} // insert

	@Override
	public int delMyRoutine(SaveVO vo) {
		return dao.delMyRoutine(vo);
	}
	
	@Override
	public int heartUp(SaveVO vo) { // row(vo) �쟾�떖 諛쏆븘 �닔�젙
		return dao.heartUp(vo);  // 泥섎━�맂 row 媛��닔 return
	} // update
	
	@Override
	public SaveVO heartSelect(SaveVO vo) {
		return dao.heartSelect(vo);
	} // selectOne
	
} // class
