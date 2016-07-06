package com.springMybatis.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springMybatis.entity.SysResource;
import com.springMybatis.service.SysResourceService;

@Controller
@RequestMapping("/platform/system/resource/")
public class SysResourceController {

		@Resource
		private SysResourceService resourceService;
		
		@RequestMapping("/save.form")
		public void save(HttpServletRequest request,HttpServletResponse response,SysResource sysResource){
			
		}
		
		@RequestMapping("/getResourceData.form")
		@ResponseBody
		public List<SysResource> getResourceData(HttpServletRequest request,HttpServletResponse response){
			return resourceService.getAll();
		}
		
}
