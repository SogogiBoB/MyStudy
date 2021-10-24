package kr.ac.kopo.newmystudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.newmystudy.dao.DiaryDao;
import kr.ac.kopo.newmystudy.model.Diary;
import kr.ac.kopo.newmystudy.util.Pager;

@Service
public class DiaryServiceImpl implements DiaryService {

	@Autowired
	DiaryDao dao;
	
	@Override
	public List<Diary> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal((float)total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Diary item) {
		dao.add(item);
	}

	@Override
	public void delete(int dnum) {
		dao.delete(dnum);
	}

	@Override
	public Diary item(int dnum) {
		return dao.item(dnum);
	}

	@Override
	public void update(Diary item) {
		dao.update(item);
	}

}
