package pandora.dao;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.Charge;
import pandora.model.FileUp;

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
	/*충전 내역 리스트 삽입*/
	public int insert(Charge charge) {
		return session.insert("chargens.insert", charge);
	}
	/*관리자 페이지에서 충전내역 조회*/
	public List<Charge> chargeList() {
		return session.selectList("chargens.chargeList");
	}
	/*충전 옵션에 해당하는 포인트 반환 메소드*/
	public int point(int charge_option) {
		return (int) session.selectOne("chargens.point", charge_option);
	}
	/*	페이징 전 나의 결제 내역 리스트
	 * public List<Charge> myChargeList(String id) {
		return session.selectList("chargens.myChargeList", id);
	}*/
	/*나의 결제내역 리스트*/
	public List<Charge> myChargeList(int startRow, int endRow, String mem_id) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		hm.put("mem_id", mem_id);
		return session.selectList("chargens.myChargeList", hm);
	}
	/*페이징을 위해 전체 목록의 개수를 구하는 메소드*/
	public int total(String id) {
		return (int) session.selectOne("chargens.total", id);
	}
}
