package com.secretgarden.project.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookMemberDTO {

	private String namefield;
	private String phonefield;
	private String emailfield;
	private String pwfield;
	private int bookno;
}
