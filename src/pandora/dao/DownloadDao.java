package pandora.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.Download;
import pandora.model.Member;

public class DownloadDao {
	private static DownloadDao instance = new DownloadDao();
	private DownloadDao() {}
	public static DownloadDao getInstance() {
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
	public int insert(Download download) {
		return session.insert("downloadns.insert", download);
	}
	public List<Download> myDownList(int startRow, int endRow, String mem_id) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		hm.put("mem_id", mem_id);
		return session.selectList("downloadns.myDownList", hm);
	}
	public int total(String down_id) {
		return (int) session.selectOne("downloadns.total", down_id);
	}
}
