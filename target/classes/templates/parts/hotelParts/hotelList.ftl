<#import "../pager.ftl" as p>
<@p.pager url page/>
<table class="table" style="background: white">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Hotel title</th>
        <th scope="col">City</th>
        <th scope="col">Stars</th>
        <th scope="col">Address</th>
        <th scope="col">Rooms quantity</th>
        <th scope="col">Editing</th>
        <th scope="col"></th>
        <th scope="col"></th>
    </tr>
    </thead>
    <#list page.content as hotel>
        <tbody>
        <#if hotel.id??>
            <td>${hotel.id}</td></#if>
        <#if hotel.hotelTitle??>
            <td>${hotel.hotelTitle}</td></#if>
        <#if hotel.city??>
            <td>${hotel.city}</td></#if>
        <#if hotel.starsQuantity??>
            <td>${hotel.starsQuantity}</td></#if>
        <#if hotel.address??>
            <td>${hotel.address}</td></#if>
        <#if hotel.roomsQuantity??>
            <td>${hotel.roomsQuantity}</td></#if>
        </td>

        <td><a href="/hotelForm/${hotel.id}" style="text-decoration: none; color: cadetblue;}">Сhange</a></td>
        <td><a href="hotelPictures/${hotel.id}" style="text-decoration: none; color: cadetblue;
            }">View hotel picture</a>
        </td>
        <td><a href="hotelRoom/${hotel.id}" style="text-decoration: none;color: cadetblue; ">View hotel room</a>
        </td>
        </tr>
        </tbody>
    <#else>
        Hotel list is empty!
    </#list>
</table>
<@p.pager url page/>
<a href="hotelForm">
    <button type="button" class="btn btn-secondary">Add new hotel</button>
</a>




