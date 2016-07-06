package com.springMybatis.dao;

import java.util.List;

import com.springMybatis.entity.SysResource;

public interface SysResourceDao {
	
	void add(SysResource resource);
	List<SysResource> getAll();
}
