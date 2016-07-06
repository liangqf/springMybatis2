package com.springMybatis.test;

public class ThreadDemo2 {
	public static void main(String[] args) {
		Demo2 d = new Demo2();
		Thread t = new Thread(d);
		t.start();
		for(int i=0;i<60;i++){
			System.out.println(Thread.currentThread().getName()+i);
		}
	}
}

//使用Runable接口创建线程
class Demo2 implements Runnable {

	@Override
	public void run() {
		for(int i=0;i<60;i++){
			System.out.println(Thread.currentThread().getName()+i);
		}
	}
	
}