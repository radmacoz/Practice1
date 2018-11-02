package pandora.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ChargeDao {

	private static ChargeDao instance = new ChargeDao();
	private ChargeDao()	{	}
	public static ChargeDao getInstance()	{
		return instance;
	}
	private static SqlSession session;
	static	{
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		} catch (Exception e) {
			System.out.println("session 생성 : "+e.getMessage());
		}
	}
	
	
}
