package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.util.Pager;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public void add(Member item) {
		sql.insert("member.add", item);
	}

	@Override
	public int checkId(String mid) {
		return sql.selectOne("member.checkId", mid);
	}

	@Override
	public Member item(String mid) {
		return sql.selectOne("member.item", mid);
	}

	@Override
	public List<Member> list(Pager pager) {
		return sql.selectList("member.list", pager);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("member.total", pager);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update", item);
	}

	@Override
	public void delete(String mid) {
		sql.delete("member.delete", mid);
	}


}
