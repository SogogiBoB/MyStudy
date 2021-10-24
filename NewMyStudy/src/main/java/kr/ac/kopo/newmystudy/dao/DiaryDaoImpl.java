package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.newmystudy.model.Diary;
import kr.ac.kopo.newmystudy.util.Pager;

@Repository
public class DiaryDaoImpl implements DiaryDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Diary> list(Pager pager) {
		return sql.selectList("diary.list", pager);
	}

	@Override
	public void add(Diary item) {
		sql.insert("diary.add",item);
	}

	@Override
	public void delete(int dnum) {
		sql.delete("diary.delete", dnum);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("diary.total", pager);
	}

	@Override
	public Diary item(int dnum) {
		return sql.selectOne("diary.item", dnum);
	}

	@Override
	public void update(Diary item) {
		sql.update("diary.update", item);
	}

}
