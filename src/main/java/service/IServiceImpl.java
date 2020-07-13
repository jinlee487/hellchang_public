package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.InbodyDAO;
import vo.InbodyVO;


@Service
public class IServiceImpl implements IService {
	@Autowired
	InbodyDAO dao;
	
	@Override
	public List<InbodyVO> selectList(InbodyVO vo) {
		return dao.selectList(vo) ;
	} // selectList()
	
	@Override
	public InbodyVO selectOne(InbodyVO vo) {
		return dao.selectOne(vo);
	} // selectOne
	
	@Override
	public int insert(InbodyVO vo) {  
		return dao.insert(vo);  // 처리된 row 갯수 return	 
	} // insert
	
	@Override
	public int update(InbodyVO vo) { // row(vo) 전달 받아 수정
		return dao.update(vo);  // 처리된 row 갯수 return
	} // update

	@Override
	public int delete(InbodyVO vo) {
		return dao.delete(vo);  // 처리된 row 갯수 return
	} // delete
	
	
} // class
