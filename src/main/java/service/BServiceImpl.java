package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.BoardDAO;
import vo.BoardVO;
import vo.PageVO;


@Service
public class BServiceImpl implements BService {
	@Autowired
	BoardDAO dao;

} // class
