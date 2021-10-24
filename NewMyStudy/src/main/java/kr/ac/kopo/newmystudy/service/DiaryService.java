package kr.ac.kopo.newmystudy.service;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Diary;
import kr.ac.kopo.newmystudy.util.Pager;

public interface DiaryService {

	List<Diary> list(Pager pager);

	void add(Diary item);

	void delete(int dnum);

	Diary item(int dnum);

	void update(Diary item);

}
