<#import "function.ftl" as func>
<#assign package=model.variables.package>
<#assign class=model.variables.class>
<#assign system=vars.system>
<#assign comment=model.tabComment>
<#assign tabName=model. tableName>
package com.hotent.${system}.test.${package};

import java.sql.SQLException;
import java.util.List;

import com.hotent.${system}.impls.${package}.${class}Impl;
import com.hotent.${system}.model.${package}.${class};

/**
 *<pre>
 * 对象功能:${comment} 测试类
 <#if vars.company?exists>
 * 开发公司:${vars.company}
 </#if>
 <#if vars.developer?exists>
 * 开发人员:${vars.developer}
 </#if>
 * 创建时间:${date?string("yyyy-MM-dd HH:mm:ss")}
 *</pre>
 */


public class ${class}Test 
{   
    public static void main(String[] args)
	{   
	   ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		${class}Dao dao = ac.getBean("messageDao",${class}Dao.class);
		List<Message> list = dao.get${class}List();
		for(Message m :list){
			System.out.println(m.getMesId()+" "+m.getMesContent());
		}
	}
}
