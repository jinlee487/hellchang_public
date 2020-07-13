package service;


import java.util.List;

import vo.InbodyVO;

public interface IService {
	List<InbodyVO> selectList(InbodyVO vo); // selectList()
	InbodyVO selectOne(InbodyVO vo); // selectOne
	int insert(InbodyVO vo); // insert
	int update(InbodyVO vo); // update
	int delete(InbodyVO vo); // delete
} // interface

