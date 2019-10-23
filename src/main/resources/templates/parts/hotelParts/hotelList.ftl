<#import "../pager.ftl" as p>
<@p.pager url page/>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Hotel title</th>
        <th scope="col">Stars</th>
        <th scope="col">Address</th>
        <th scope="col">Rooms quantity</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <#list page.content as hotel>
        <tbody>
        <#if hotel.id??>
            <td>${hotel.id}</td></#if>
        <#if hotel.hotelTitle??>
            <td>${hotel.hotelTitle}</td></#if>
        <#if hotel.address??>
            <td>${hotel.address}</td></#if>
        <#if hotel.roomsQuantity??>
            <td>${hotel.roomsQuantity}</td></#if>
        </td>
        <td><a href="hotelPicture/${hotel.id}">View hotel picture</a>
        </td>
        </tr>
        </tbody>
    <#else>
        Hotel list is empty!
    </#list>
</table>
<@p.pager url page/>