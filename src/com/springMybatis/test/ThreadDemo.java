package com.springMybatis.test;

public class ThreadDemo {
	public static void main(String[] args) {
		Demo d = new Demo();
		d.start();//启动线程
		for(int i=0;i<60;i++){
			System.out.println(Thread.currentThread().getName()+i);
		}
	}
}

//使用Thread类创建线程
class Demo extends Thread {
	public void run(){
		for(int i=0;i<60;i++){
			System.out.println(Thread.currentThread().getName()+i);
		}
	}
}

