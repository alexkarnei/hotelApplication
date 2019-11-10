<#import "../pager.ftl" as p>
<@p.pager url page/>
<table class="table" style="background-color: white">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Room type</th>
        <th scope="col">IsFree</th>
        <th scope="col">Cost</th>
        <th scope="col">Hotel</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <#list page.content as hotelRoom>
        <tbody>
        <#if hotelRoom.id??>
            <td>${hotelRoom.id}</td></#if>
        <#if hotelRoom.roomType??>
            <td><#list hotelRoom.roomType as roomType>${roomType}<#sep>, </#list></td></#if>
        <#if hotelRoom.free??>
            <td>${hotelRoom.free?then( "true"," false")}</td></#if>
        <#if hotelRoom.cost??>
            <td>${hotelRoom.cost}</td></#if>
        <#if hotelRoom.hotel.id??>
            <td>${hotelRoom.hotel.id}</td></#if>
        </td>
        <td><a href="hotelRoomPicture/${hotelRoom.id}" style="color: wheat">View hotel picture</a>
        </td>
        <td><a href="bookHotelRoom/${hotelRoom.id}" style="color: wheat">Book hotel room</a>
        </td>
        </tbody>
    <#else>
        Hotel room list is empty!
    </#list>
</table>
<@p.pager url page/>