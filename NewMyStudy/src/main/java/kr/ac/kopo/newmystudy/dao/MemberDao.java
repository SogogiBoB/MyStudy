package kr.ac.kopo.newmystudy.dao;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.util.Pager;

public interface MemberDao {

	void add(Member item);

	int checkId(String mid);

	Member item(String mid);

	List<Member> list(Pager pager);

	int total(Pager pager);

	void update(Member item);

	void delete(String mid);
	
}
