package kr.ac.kopo.newmystudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.newmystudy.dao.MemberDao;
import kr.ac.kopo.newmystudy.model.Member;
import kr.ac.kopo.newmystudy.util.Pager;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;

	@Override
	public void add(Member item) {
		dao.add(item);
	}

	@Override
	public boolean checkId(String mid) {
		if(dao.checkId(mid) > 0)
			return false;
		else
			return true;
	}

	@Override
	public Member item(String mid) {
		return dao.item(mid);
	}

	@Override
	public List<Member> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal((float)total);
		
		return dao.list(pager);
	}

	@Override
	public void update(Member item) {
		dao.update(item);
	}

	@Override
	public void delete(String mid) {
		dao.delete(mid);
	}
	
	

}
