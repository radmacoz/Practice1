package pandora.model;

import java.sql.Date;

public class Download {

	private int down_num;	// 다운로드 번호(p.k)
	private Date down_date;	// 다운로드 일시
	private String down_id;	// 구매자 아이디
	private int file_num;	// 파일 번호(f.k)
	// f.k로 참조하여 fileup 으로부터 불러오는 컬럼
	private String file_name;	// 업로더가 지정한 파일 제목
	private int file_point;	// 파일 포인트
	private int file_size;		// 파일 용량
	private String mem_id;	// 업로더 아이디
	public int getDown_num() {
		return down_num;
	}
	public void setDown_num(int down_num) {
		this.down_num = down_num;
	}
	public Date getDown_date() {
		return down_date;
	}
	public void setDown_date(Date down_date) {
		this.down_date = down_date;
	}
	public String getDown_id() {
		return down_id;
	}
	public void setDown_id(String down_id) {
		this.down_id = down_id;
	}
	public int getFile_num() {
		return file_num;
	}
	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public int getFile_point() {
		return file_point;
	}
	public void setFile_point(int file_point) {
		this.file_point = file_point;
	}
	public int getFile_size() {
		return file_size;
	}
	public void setFile_size(int file_size) {
		this.file_size = file_size;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
