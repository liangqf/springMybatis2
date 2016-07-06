<#import "function.ftl" as func>
<#assign package=model.variables.package>
<#assign class=model.variables.class>
<#assign system=vars.system>
<#assign tableName=model.tableName>
<#assign table=model.subTableList>
package com.hotent.${system}.service.${package};

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.hotent.${system}.model.${package}.${class};
import com.hotent.${system}.dao.${package}.${class}Dao;

/**
 *<pre>
 * 对象功能:${model.tabComment} Service类
 <#if vars.company?exists>
 * 开发公司:${vars.company}
 </#if>
 <#if vars.developer?exists>
 * 开发人员:${vars.developer}
 </#if>
 * 创建时间:${date?string("yyyy-MM-dd HH:mm:ss")}
 *</pre>
 */
@Service
public class ${class}Service {
	@Resource
	private ${class}Dao dao;
	
	public ${class}Service()
	{
	}
	/**
	*查找${tableName}表中的所有数据
	*
	*/
	public List<${class}> find${class}List(){
	  List<${class}> list = dao.get${class}List();
	  return list;
	}
	
	
	
}
