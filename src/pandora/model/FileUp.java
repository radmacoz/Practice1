package pandora.model;

import java.sql.Date;

public class FileUp {

	private int file_num;	// 업로드 파일 번호
	private String file_name;	// 업로더가 지정한 파일 제목
	private String category;	// 파일 분류
	private String mem_id;		// 판매자(업로더) 아이디
	private String file_desc;		// 파일 설명
	private String file_shot;		// 파일 스샷 주소
	private String file_upload;	// 실제 파일 주소
	private int file_size;		// 파일 용량
	private int file_point;	// 파일 포인트
	private Date file_date;	// 파일 업로드 날짜
	private String file_del;	// 파일 삭제 여부
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getFile_desc() {
		return file_desc;
	}
	public void setFile_desc(String file_desc) {
		this.file_desc = file_desc;
	}
	public String getFile_shot() {
		return file_shot;
	}
	public void setFile_shot(String file_shot) {
		this.file_shot = file_shot;
	}
	public String getFile_upload() {
		return file_upload;
	}
	public void setFile_upload(String file_upload) {
		this.file_upload = file_upload;
	}
	public int getFile_size() {
		return file_size;
	}
	public void setFile_size(int file_size) {
		this.file_size = file_size;
	}
	public int getFile_point() {
		return file_point;
	}
	public void setFile_point(int file_point) {
		this.file_point = file_point;
	}
	public Date getFile_date() {
		return file_date;
	}
	public void setFile_date(Date file_date) {
		this.file_date = file_date;
	}
	public String getFile_del() {
		return file_del;
	}
	public void setFile_del(String file_del) {
		this.file_del = file_del;
	}
	
}
