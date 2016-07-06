package com.springMybatis.entity;
/**
 * 
 * @author liangqf
 *
 */
public class SysResource {
	
	private String id;
	//资源相对路径
	private String path;
	//资源名称
	private String name;
	//资源别名
	private String alias;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	
}
