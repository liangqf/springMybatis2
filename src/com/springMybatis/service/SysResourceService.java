package com.springMybatis.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springMybatis.dao.SysResourceDao;
import com.springMybatis.entity.SysResource;

@Service
public class SysResourceService {
	
	@Resource
	private SysResourceDao dao;
	
	public void save(SysResource resource) {
		dao.add(resource);
	}
	
	public List<SysResource> getAll(){
		return dao.getAll();
	}
}
