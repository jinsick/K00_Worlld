package com.poly.board;

public class BoardDTO {

	private int sequence;
	private String title;
	private String writer;
	private String wirteday;
	private int readcount;
	private String content;

	public BoardDTO() {
		super();
	}

	public BoardDTO(int sequence, String title, String writer, String wirteday, int readcount, String content) {
		super();
		this.sequence = sequence;
		this.title = title;
		this.writer = writer;
		this.wirteday = wirteday;
		this.readcount = readcount;
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getSequence() {
		return sequence;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getWirteday() {
		return wirteday;
	}

	public void setWirteday(String wirteday) {
		this.wirteday = wirteday;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

}
