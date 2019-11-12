<#include "parts/security.ftl">
<#import "parts/pageTemplate.ftl" as pt>
<@pt.page>
    <#include "parts/hotelRoomParts/hotelRoomList.ftl">
    <#if isAdmin>
    <#include "parts/hotelRoomParts/hotelRoomForm.ftl">
    </#if>
</@pt.page>