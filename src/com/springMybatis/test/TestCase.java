//package com.springMybatis.test;
//
//import java.sql.Timestamp;
//import java.util.List;
//
//import org.junit.Test;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import com.springMybatis.dao.MessageDao;
//import com.springMybatis.entity.Message;
//
//
//public class TestCase {
//	@Test
//	public void testAddMes(){
//		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		MessageDao mesDao = ac.getBean("messageDao",MessageDao.class);
//		Message mes = new Message();
//		mes.setMesContent("��������������");
//		mes.setMesCreatime(new Timestamp(System.currentTimeMillis()));
//		mes.setMesId("555");
//		mesDao.addMes(mes);
//		
//	}
//	
//	@Test
//	public void testFindAllMes(){
//		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		MessageDao mesDao = ac.getBean("messageDao",MessageDao.class);
//		List<Message> list = mesDao.findAllMes();
//		for(Message m :list){
//			System.out.println(m.getMesId()+" "+m.getMesContent());
//		}
//	}
//	
//	@Test
//	public void testDeleMes(){
//		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		MessageDao mesDao = ac.getBean("messageDao",MessageDao.class);
//		mesDao.deleMes("1");
//	}
	
//	@Test
//	public void testUpdateMes(){
//		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//		MessageDao mesDao = ac.getBean("messageDao",MessageDao.class);
//		Message mes = mesDao.findById("2");
//		mes.setMesContent("������������");
//	}

//}
