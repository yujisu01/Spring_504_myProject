package com.secretgarden.project.domain;


import lombok.Data;

@Data
public class Criteria {
	private int pageNum;
	private int amount;
	private String type;	// 검색어
	private String keyword;
	
	public Criteria() {
		this(1, 10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	public String[] getTypeArr() {
		return type == null? new String[]{} : type.split("");
	}


}