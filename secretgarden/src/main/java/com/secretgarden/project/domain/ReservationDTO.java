package com.secretgarden.project.domain;

import lombok.Data;

@Data
public class ReservationDTO {
	
	private int bookno;
	private String bookroom;
	private String bookhour;
	private String bookduration;
	private int bookpeople;
	private String booked;
}
