<#import "../pager.ftl" as p>
<@p.pager url page/>
<table class="table" style="background: white">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Title</th>
        <th scope="col">Url</th>
        <th scope="col">Hotel</th>
    </tr>
    </thead>
    <#list page.content as hotelPicture>
        <tbody>
        <#if hotelPicture.id??>
            <td>${hotelPicture.id}</td></#if>
        <#if hotelPicture.title??>
            <td>${hotelPicture.title}</td></#if>
        <#if hotelPicture.url??>
            <td>${hotelPicture.url}</td></#if>
        <#if hotelPicture.hotel??>
            <td>${hotelPicture.hotel.id}</td></#if>
        </tbody>
    <#else>
        Hotel Pictures list is empty!
    </#list>
</table>
<@p.pager url page/>