package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.MemberDAO;
import vo.MPageVO;
import vo.MemberVO;

@Service
public class MServiceImpl implements MService {
	@Autowired
	MemberDAO dao;
	

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

	@Override
	public int imgUpdate(MemberVO vo) {
		return dao.imgUpdate;
	}
	
} // class
