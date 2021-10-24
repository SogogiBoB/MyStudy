package kr.ac.kopo.newmystudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.newmystudy.dao.QuizDao;
import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.util.Pager;

@Service
public class QuizServiceImpl implements QuizService {

	@Autowired
	QuizDao dao;
	
	@Override
	public List<Quiz> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal((float)total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Quiz item) {
		dao.add(item);
	}

	@Override
	public Quiz item(int rnum) {
		return dao.item(rnum);
	}

	@Override
	public void update(Quiz item) {
		dao.update(item);
	}

	@Override
	public void delete(int rnum) {
		dao.delete(rnum);
	}

	@Override
	public List<Quiz> launcherList(Pager pager) {
		return dao.launcherList(pager);
	}



}