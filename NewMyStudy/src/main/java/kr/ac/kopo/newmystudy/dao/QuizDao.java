package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.util.Pager;

public interface QuizDao {

	List<Quiz> list(Pager pager);

	void add(Quiz item);

	Quiz item(int rnum);

	void update(Quiz item);

	void delete(int rnum);

	int total(Pager pager);

	List<Quiz> launcherList(Pager pager);


}
