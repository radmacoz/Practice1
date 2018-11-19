package pandora.dao;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.Charge;

public class ChargeDao {
	private static ChargeDao instance = new ChargeDao();
	private ChargeDao() {}
	public static ChargeDao getInstance() {
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
/*	public Charge select(String id) {
		return (Charge) session.selectOne("chargens.select", id);
	}
	
	public int update(Charge charge) {
		return session.update("chargens.update", charge);
	}
	public int delete(String id) {
		return session.delete("chargens.delete", id);
	}*/
	public int insert(Charge charge) {
		return session.insert("chargens.insert", charge);
	}
	public List<Charge> myChargeList(String id) {
		return session.selectList("chargens.myChargeList", id);
	}
	public List<Charge> chargeList() {
		return session.selectList("chargens.chargeList");
	}
}
