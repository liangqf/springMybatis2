package com.springMybatis.dao;

import java.util.List;

import com.springMybatis.entity.Message;

public interface MessageDao {
	
	void addMes(Message mes);
	Message getById(String mesId);
	void updateMes(Message mes);
	void deleMes(String mesId);
	List<Message> findAllMes();

}
