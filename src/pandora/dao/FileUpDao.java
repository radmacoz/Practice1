package pandora.dao;

import java.io.Reader;
import java.util.HashMap;
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
	/*전체 파일리스트 불러오는 메소드*/
	public List<FileUp> list() {
		return session.selectList("fileupns.list");
	}
	/*분류에 해당하는 파일리스트 불러오는 메소드*/
	public List<FileUp> list2(String category) {
		return session.selectList("fileupns.list2", category);
	}
	/*파일 검색 중 분류가 전체에 해당하는 파일리스트 불러오는 메소드*/
	public List<FileUp> listSearch1(HashMap<String, Object> hm) {
		return session.selectList("fileupns.list3", hm);
	}
	/*파일 검색 중 분류가 전체가 아닌 경우 파일리스트 불러오는 메소드*/
	public List<FileUp> listSearch2(HashMap<String, Object> hm) {
		return session.selectList("fileupns.list4", hm);
	}
	/*파일 업로드하여 삽입하는 메소드*/
	public int insert(FileUp file) {
		return session.insert("fileupns.insert", file);
	}
	/*파일 번호에 해당하는 파일 객체 선택하는 메소드*/
	public FileUp select(int file_num) {
		return (FileUp) session.selectOne("fileupns.select", file_num);
	}

	/* 참고 메소드 목록
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
