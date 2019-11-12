<#include "parts/security.ftl">
<#import "parts/pageTemplate.ftl" as pt>
<@pt.page>
    <#include "parts/hotelPicturesPart/hotelPictureList.ftl">
    <#if isAdmin>
    <#include "parts/hotelPicturesPart/hotelPicturesForm.ftl">
        </#if>
</@pt.page>