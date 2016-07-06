package com.springMybatis.test;
/**
 * 
 * @author liangqf
 * 线程安全
 *
 */
public class ThreadDemo3 {
	public static void main(String[] args) {
		Ticket ticket = new Ticket();
		Thread t1 = new Thread(ticket,"窗口一");
		Thread t2 = new Thread(ticket,"窗口二");
		Thread t3 = new Thread(ticket,"窗口三");
		Thread t4 = new Thread(ticket,"窗口四");
		t1.start();
		t2.start();
		t3.start();
		t4.start();
	}
}

////同步代码块
//class Ticket implements Runnable {
//	
//	private int ticket = 300;
//
//	@Override
//	public void run() {
//		while(true) {
//			synchronized (new Object()) {
//				try {
//					Thread.sleep(1);
//				} catch (InterruptedException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				if(ticket <=0 ){
//					break;
//				}
//				System.out.println(Thread.currentThread().getName()+"卖出"+ticket--);
//			}
//		}
//	}
//	
//}

//同步函数
class Ticket implements Runnable {
	
	private int ticket = 300;
	
	public synchronized void saleTicket(){
		if(ticket > 0 ){
			System.out.println(Thread.currentThread().getName()+"还剩票"+ticket--);
		}
	}

	@Override
	public void run() {
		while(true){
			saleTicket();
		}
	}
	
}

