<#import "parts/pageTemplate.ftl" as pt>

<@pt.page>
    <h1 style="color: wheat">List of users</h1>
    <table table class="table" style="background: white">
        <thead class="thead-dark">
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col">Edit user</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.userRoles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}" style="color: cadetblue">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@pt.page>