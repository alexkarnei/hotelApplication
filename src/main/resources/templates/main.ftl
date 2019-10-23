<#include "parts/security.ftl">
<#import "parts/pageTemplate.ftl" as pt>

<@pt.page>
    <h1>Hello, <#if user??>${user.username}<#else>guest</#if>!</h1>
    <div>It's a Hotel application</div>
</@pt.page>