package kr.ac.kopo.newmystudy.service;

import java.util.List;

import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.util.Pager;

public interface MemberService {

	void add(Member item);

	boolean checkId(String mid);

	Member item(String mid);

	List<Member> list(Pager pager);

	void update(Member item);

	void delete(String mid);


}
