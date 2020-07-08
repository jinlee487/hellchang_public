package service;

import java.util.List;

import vo.MPageVO;
import vo.MemberVO;

public interface MService {

	List<MemberVO> selectList(); // selectList()
	MemberVO selectOne(MemberVO vo); // selectOne
//	int insert(MemberVO vo); // insert
	int update(MemberVO vo); // update
//	int delete(MemberVO vo); // delete
	
} // interface