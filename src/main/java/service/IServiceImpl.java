package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.InbodyDAO;
import vo.InbodyVO;


@Service
public class IServiceImpl implements SService {
	@Autowired
	SaveDAO dao;

	@Override
	public int saveMyRoutine(SaveVO vo) {  
		return dao.saveMyRoutine(vo);  // 처리된 row 갯수 return	 
	} // insert
	
	@Override
	public List<MemberVO> selectList() {
		return dao.selectList() ;
	} // selectList()
	
	@Override
	public MemberVO selectOne(MemberVO vo) {
		return dao.selectOne(vo);
	} // selectOne
	
	@Override
	public int insert(MemberVO vo) {  
		return dao.insert(vo);  // 처리된 row 갯수 return	 
	} // insert
	
	@Override
	public int update(MemberVO vo) { // row(vo) 전달 받아 수정
		return dao.update(vo);  // 처리된 row 갯수 return
	} // update

	@Override
	public int delete(MemberVO vo) {
		return dao.delete(vo);  // 처리된 row 갯수 return
	} // delete
	
	
} // class
