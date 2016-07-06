package com.springMybatis.entity;

import java.util.Date;

/**
 * 
 * @author Liangqf
 *
 */
public class SysFile {
	
	private String id;//文件id
	
	private String type;//文件类型
	
	private String size;//文件大小
	
	private String filePath;//文件保存路径
	
	private String fileName;//文件名称
	
	private Date createTime;//创建时间

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
