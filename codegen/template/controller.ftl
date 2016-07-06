<#import "function.ftl" as func>
<#assign package=model.variables.package>
<#assign class=model.variables.class>
<#assign system=vars.system>
<#assign comment=model.tabComment>
<#assign classVar=model.variables.classVar>
package com.hotent.${system}.controller.${package};

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import com.hotent.${system}.model.${package}.${class};
import com.hotent.${system}.service.${package}.${class}Service;
/**
 *<pre>
 * 对象功能:${comment} 控制器类
 <#if vars.company?exists>
 * 开发公司:${vars.company}
 </#if>
 <#if vars.developer?exists>
 * 开发人员:${vars.developer}
 </#if>
 * 创建时间:${date?string("yyyy-MM-dd HH:mm:ss")}
 *</pre>
 */
@Controller
@RequestMapping("/${system}/${package}/${classVar}")
public class ${class}Controller 
{
	@Resource
	private ${class}Service service;
	
	@RequestMapping("/findlist.form")
	public ModelAndView findAll${classVar}(){
		List<${class}> list = service.find${class}List()();
		Map<String,Object> data = new HashMap<String, Object>();
		data.put("list", list);
		return new ModelAndView("allmes",data);
	}
	
}
