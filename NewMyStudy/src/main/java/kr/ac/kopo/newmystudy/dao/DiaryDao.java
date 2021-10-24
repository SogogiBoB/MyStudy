package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Diary;
import kr.ac.kopo.newmystudy.util.Pager;

public interface DiaryDao {

	List<Diary> list(Pager pager);

	void add(Diary item);

	void delete(int dnum);

	int total(Pager pager);

	Diary item(int dnum);

	void update(Diary item);
}
