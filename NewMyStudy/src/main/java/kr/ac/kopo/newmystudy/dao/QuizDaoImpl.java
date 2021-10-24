package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.newmystudy.model.Quiz;
import kr.ac.kopo.newmystudy.util.Pager;

@Repository
public class QuizDaoImpl implements QuizDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Quiz> list(Pager pager) {
		return sql.selectList("quiz.list", pager);
	}

	@Override
	public void add(Quiz item) {
		sql.insert("quiz.add", item);
	}

	@Override
	public Quiz item(int rnum) {
		return sql.selectOne("quiz.item", rnum);
	}

	@Override
	public void update(Quiz item) {
		sql.update("quiz.update", item);
	}

	@Override
	public void delete(int rnum) {
		sql.delete("quiz.delete", rnum);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("quiz.total", pager);
	}

	@Override
	public List<Quiz> launcherList(Pager pager) {
		return sql.selectList("quiz.list", pager);
	}

}
