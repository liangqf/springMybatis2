<#import "function.ftl" as func>
<#assign package=model.variables.package>
<#assign class=model.variables.class>
<#assign system=vars.system>
package com.hotent.${system}.dao.${package};

import java.util.List;
import com.hotent.${system}.model.${package}.${class};
/**
 *<pre>
 * 对象功能:${model.tabComment} 接口
 <#if vars.company?exists>
 * 开发公司:${vars.company}
 </#if>
 <#if vars.developer?exists>
 * 开发人员:${vars.developer}
 </#if>
 * 创建时间:${date?string("yyyy-MM-dd HH:mm:ss")}
 *</pre>
 */
public interface ${class}Dao {
  List<${class}> get${class}List();
}