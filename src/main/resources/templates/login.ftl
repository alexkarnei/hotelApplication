<#import "parts/pageTemplate.ftl" as pt>
<#import "parts/login.ftl" as l>
<@pt.page>
    <div class="pt-5">
        <#if message??>
            <div class="alert alert-${messageType}" role="alert">
                ${message}
            </div>
        </#if>
        <div class="container mt-5">
            <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
                <div class="alert alert-danger" role="alert">
                    ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
                </div>
            </#if>
            <#if messageAct??>
                ${messageAct}
            </#if>
            <@l.login "/login" false/>
        </div>
    </div>
</@pt.page>