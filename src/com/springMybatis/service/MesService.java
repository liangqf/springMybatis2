package com.springMybatis.service;


import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springMybatis.dao.MessageDao;
import com.springMybatis.entity.Message;

@Service
public class MesService {
	@Resource
	private MessageDao mesDao;
	
	/**
	 * 
	 * 添加留言
	 * @param mesContent 
	 * void
	 * @exception 
	 * @since  1.0.0
	 */
	public void addMes(Message message){
		if(message.getMesContent() == null)
			throw new RuntimeException("内容不能为空");
		message.setMesCreatime(new Timestamp(System.currentTimeMillis()));
		message.setMesId(UUID.randomUUID().toString());
		mesDao.addMes(message);
	}
	
	/**
	 * 
	 * 查询所有留言
	 * @return 
	 * List$lt;Message>
	 * @exception 
	 * @since  1.0.0
	 */
	public List<Message> findAllMes(){
		List<Message> mesList = mesDao.findAllMes();
		return mesList;
	}
	
	/**
	 * 
	 * 删除留言
	 * @param mesId 
	 * void
	 * @exception 
	 * @since  1.0.0
	 */
	public void deleMes(String mesId){
		mesDao.deleMes(mesId);
	}
	
	/**
	 * 
	 * 更新留言
	 * @param mesId
	 * @param mesContent 
	 * void
	 * @exception 
	 * @since  1.0.0
	 */
	public void updateMes(Message message){
		if(message.getMesContent() == null)
			throw new RuntimeException("内容不能为空");
		mesDao.updateMes(message);
		
	}
	
	/**
	 * 
	 * 根据留言id获取留言对象
	 * @param mesId
	 * @return 
	 * Message
	 * @exception 
	 * @since  1.0.0
	 */
	public Message getById(String mesId){
		Message mes = mesDao.getById(mesId);
		return mes;
	}

}
