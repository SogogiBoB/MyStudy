package kr.ac.kopo.newmystudy.service;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.util.Pager;

public interface QuizService {

	List<Quiz> list(Pager pager);

	void add(Quiz item);

	Quiz item(int rnum);

	void update(Quiz item);

	void delete(int rnum);

	List<Quiz> launcherList(Pager pager);


}
