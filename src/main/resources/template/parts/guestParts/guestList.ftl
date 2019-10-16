<#import "../pager.ftl" as p>
<@p.pager url page/>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">First name</th>
        <th scope="col">Last name</th>
        <th scope="col">Passport</th>
    </tr>
    </thead>
    <#list page.content as guest>
        <tbody>
        <#if guest.id??>
            <td>${guest.id}</td></#if>
        <#if guest.firstName??>
            <td>${guest.firstName}</td></#if>
        <#if guest.lastName??>
            <td>${guest.lastName}</td></#if>
        <#if guest.passport??>
            <td>${guest.passport}</td></#if>
        </td>
        <td><a href="hotelRoom/${guest.id}">Add hotel room</a>
        </td>
        </tr>
        </tbody>
    <#else>
        Guest list is empty!
    </#list>
</table>
<@p.pager url page/>