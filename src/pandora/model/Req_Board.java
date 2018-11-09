package pandora.model;

import java.sql.Date;
public class Req_Board {
	  private int board_num;
	  private String mem_id;
	  private String board_subject;
	  private String board_content;
	  private int board_readcount;
	  private int board_ref;
	  private int board_re_step;
	  private int board_re_level;
	  private Date board_re_date;
	  private String board_del;
	  private String category;
	public int getBoard_num() {
		return board_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public String getBoard_subject() {
		return board_subject;
	}
	public String getBoard_content() {
		return board_content;
	}
	public int getBoard_readcount() {
		return board_readcount;
	}
	public int getBoard_ref() {
		return board_ref;
	}
	public int getBoard_re_step() {
		return board_re_step;
	}
	public int getBoard_re_level() {
		return board_re_level;
	}
	
	public String getBoard_del() {
		return board_del;
	}
	
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public void setBoard_readcount(int board_readcount) {
		this.board_readcount = board_readcount;
	}
	public void setBoard_ref(int board_ref) {
		this.board_ref = board_ref;
	}
	public void setBoard_re_step(int board_re_step) {
		this.board_re_step = board_re_step;
	}
	public void setBoard_re_level(int board_re_level) {
		this.board_re_level = board_re_level;
	}
	
	public void setBoard_del(String board_del) {
		this.board_del = board_del;
	}
	public String getCategory() {
		return category;
	}
	public Date getBoard_re_date() {
		return board_re_date;
	}
	public void setBoard_re_date(Date board_re_date) {
		this.board_re_date = board_re_date;
	}
	public void setCategory(String category) {
		this.category = category;
	}

}
