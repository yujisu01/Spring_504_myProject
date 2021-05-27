package com.secretgarden.project.domain;

import lombok.Data;

@Data
public class ReservationDTO {
	
	private Integer bookno;
	private String bookroom;
	private String bookhour;
	private String bookduration;
	private Integer bookpeople;
	private String booked;
}
