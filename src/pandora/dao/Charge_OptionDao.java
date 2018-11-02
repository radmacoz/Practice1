package pandora.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Charge_OptionDao {

	private static Charge_OptionDao instance = new Charge_OptionDao();
	private Charge_OptionDao()	{	}
	public static Charge_OptionDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static	{
		try	{
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		}	catch (Exception e) {
				System.out.println("session 생성 : "+e.getMessage());
		}
	}
}
