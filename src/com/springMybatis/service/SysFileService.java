package com.springMybatis.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.springMybatis.dao.SysFileDao;
import com.springMybatis.entity.SysFile;

@Service
public class SysFileService {
	
	@Resource
	private SysFileDao sysFileDao;
	
	public void save(SysFile sysFile){
		sysFileDao.add(sysFile);
	}

}
