package com.springMybatis.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springMybatis.entity.Message;
import com.springMybatis.service.MesService;

@Controller
@RequestMapping("/platform/system/message/")
public class MesController {
	
	@Resource
	private MesService mesService;
	
	
	@RequestMapping("/save.form")
	public void addMes(HttpServletRequest request,HttpServletResponse response,Message message){
		try {
			if(message.getMesId() == ""){
				mesService.addMes(message);
			}else{
				mesService.updateMes(message);
			}
			response.sendRedirect("list.form");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/list.form")
	public ModelAndView findAll(){
		List<Message> list = mesService.findAllMes();
		Map<String,Object> data = new HashMap<String, Object>();
		data.put("list", list);
		return new ModelAndView("messageList").addObject("messageList", list);
	}
	
	@RequestMapping("/del.form")
	public void deleMes(HttpServletRequest request,HttpServletResponse response){
		String mesId = request.getParameter("mesId");
		mesService.deleMes(mesId);
		try {
			response.sendRedirect("list.form");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping("/editMes.form")
	public ModelAndView editMes(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("editMes");
		String mesId = request.getParameter("mesId");
		Message message = mesService.getById(mesId);
		return mv.addObject("message", message);
	}

}
