package pandora.dao;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.Member;

public class MemberDao {
	private static MemberDao instance = new MemberDao();
	private MemberDao() {}
	public static MemberDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try{Reader reader = 
			 Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = 
				new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		}catch(Exception e) {
			System.out.println("session생성 : "+e.getMessage());
		}
	}
	// 회원 객체 하나 선택하여 반환
	public Member select(String id) {
		return (Member) session.selectOne("memberns.select", id);
	}
	// 회원 객체 하나 수정
	public int update(Member member) {
		return session.update("memberns.update", member);
	}
	// 회원 객체 하나 삭제
	public int delete(String id) {
		return session.delete("memberns.delete", id);
	}
	// 회원 객체 하나 등록
	public int insert(Member member) {
		return session.insert("memberns.insert", member);
	}
	// 금액 충전
	public int charge(Member member) {
		return session.update("memberns.charge", member);
	}
	// 다운로드 시 멤버 포인트 차감
	public int down(Member member) {
		return session.update("memberns.down", member);
	}
	// 업로드 한 자료가 다운로드 될 때 판매자 포인트 상승
	public int upload(Member member) {
		return session.update("memberns.upload", member);
	}
	// 회원 목록 조회
	public List<Member> list() {
		return session.selectList("memberns.list");
	}
	// 판매자 신청 회원 조회
	public List<Member> list2() {
		return session.selectList("memberns.list2");
	}
	public int vipApp(Member member) {
		return session.update("memberns.vipapply", member);
	}
	public int vipAccept(Member member) {
		return session.update("memberns.vipaccept", member);
	}
	public int vipReject(Member member) {
		return session.update("memberns.vipreject", member);
	}
}
