package pandora.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pandora.model.Req_Board;

public class Req_BoardDao {
	private static Req_BoardDao instance = new Req_BoardDao();
	private Req_BoardDao()	{	}
	public static Req_BoardDao getInstance()	{
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
	public List<Req_Board> list(int startRow,int endRow) {
		HashMap<String, Integer> hm = new HashMap<>();
		hm.put("startRow", startRow);
		hm.put("endRow", endRow);
		return session.selectList("req_boardns.list",hm);
	}	
	public int insert(Req_Board req_board) {
		return session.insert("req_boardns.insert", req_board);
	}
	public Req_Board select(int board_num) {
		return (Req_Board)session.selectOne("req_boardns.getBoard", board_num);
	}
	/*public Req_Board select(int board_num) {
		Req_Board req_board = null;
		try {
			req_board = (Req_Board)session.selectOne("req_boardns.getBoard", board_num);			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return req_board;
	}*/
	public void readcountUpdate(int board_num) {
		Req_Board req_board = null;
		try {
			req_board = (Req_Board)session.selectOne("req_boardns.readcount", board_num);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public int update(Req_Board req_board) {
		System.out.println("제목"+req_board.getBoard_subject());
		System.out.println("내용"+req_board.getBoard_content());
		System.out.println("분류"+req_board.getCategory());
		return session.update("req_boardns.update", req_board);
	}
	public int delete(int board_num) {
		return session.update("req_boardns.delete",board_num);
	}
	public int maxStep(int board_ref) {
		return (int) session.selectOne("req_boardns.maxStep", board_ref);
	}
	public int increaseAncestor(int board_num) {
		return session.update("req_boardns.increaseAncestor",board_num);
	}
	public int numupdate(Req_Board req_board) {
		return session.update("req_boardns.numupdate", req_board);
	}
	public int reSelect(Req_Board req_board) {
		return (int) session.selectOne("req_boardns.reSelect",req_board);
	}
	public int reInsert(Req_Board req_board) {
		return session.insert("req_boardns.reInsert",req_board);
	}
	public int total() {
		return (int) session.selectOne("req_boardns.total");
	}

}
