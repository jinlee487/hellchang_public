package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.SaveDAO;
import vo.HeartVO;
import vo.MemberVO;
import vo.PageVO;
import vo.ReplyVO;
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
	public int heartUp(HeartVO hvo) { // row(vo) �쟾�떖 諛쏆븘 �닔�젙
		return dao.heartUp(hvo);  // 泥섎━�맂 row 媛��닔 return
	} // update
	
	@Override
	public HeartVO heartSelect(HeartVO hvo) {
		return dao.heartSelect(hvo);
	} // selectOne
	
	@Override
	public int heartTest(HeartVO hvo) {  
		return dao.heartTest(hvo);  // 泥섎━�맂 row 媛��닔 return	 
	} // insert
	
	@Override
	public int replyInsert(ReplyVO rvo) {  
		return dao.replyInsert(rvo);  // 泥섎━�맂 row 媛��닔 return	 
	} // insert
	
	@Override
	public List<ReplyVO> replyResult(ReplyVO rvo) {
		return dao.replyResult(rvo);
	} // selectOne
} // class
