package pandora.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.FileUp;

public class FileUpDao {
	private static FileUpDao instance = new FileUpDao();
	private FileUpDao()	{	}
	public static FileUpDao getInstance() {
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
	
	public List<FileUp> list() {
		return session.selectList("fileupns.list");
	}
	/* 고쳐야 할 sql 목록
	public FileUp select(String id) {
		return (FileUp) session.selectOne("memberns.select", id);
	}
	
	public int update(FileUp member) {
		return session.update("memberns.update", member);
	}
	public int delete(FileUp id) {
		return session.delete("memberns.delete", id);
	}
	public int insert(FileUp member) {
		return session.insert("memberns.insert", member);
	}
	*/
}
