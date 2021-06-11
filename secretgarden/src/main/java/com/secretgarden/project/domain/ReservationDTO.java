package com.secretgarden.project.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReservationDTO {
	
	private int bookno;
	private String bookroom;
	private String bookhour;
	private String bookduration;
	private int bookpeople;
	private String booked;
	private Date rdate;
}
