package pandora.dao;
import java.io.Reader;

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
	public Member select(String id) {
		return (Member) session.selectOne("memberns.select", id);
	}
	
	public int update(Member member) {
		return session.update("memberns.update", member);
	}
	public int delete(String id) {
		return session.delete("memberns.delete", id);
	}
	public int insert(Member member) {
		return session.insert("memberns.insert", member);
	}
	
	public int charge(Member member) {
		return session.update("memberns.charge", member);
	}
	public int down(Member member) {
		return session.update("memberns.down", member);
	}
	public int upload(Member member) {
		return session.update("memberns.upload", member);
	}
}
