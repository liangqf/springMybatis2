package com.springMybatis.entity;

import java.io.Serializable;
import java.sql.Timestamp;

public class Message implements Serializable {
	
	private static final long serialVersionUID = 2501604557413536991L;
	private String mesId;
	private String mesContent;
	private Timestamp mesCreatime;
	
	public Message(){}

	

	public String getMesId() {
		return mesId;
	}



	public void setMesId(String mesId) {
		this.mesId = mesId;
	}



	public String getMesContent() {
		return mesContent;
	}

	public void setMesContent(String mesContent) {
		this.mesContent = mesContent;
	}

	public Timestamp getMesCreatime() {
		return mesCreatime;
	}

	public void setMesCreatime(Timestamp mesCreatime) {
		this.mesCreatime = mesCreatime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	

}
