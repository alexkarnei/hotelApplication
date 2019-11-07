<#import "parts/pageTemplate.ftl" as pt>

<@pt.page>
    <h1 style="color: wheat">User editor</h1>
    <form action="/user" method="post">
        <input type="text" name="username" class="form-control" style="width: auto" value="${user.username}">
        <#list roles as role>
            <div>
                <label style="color: wheat">
                    <input type="checkbox" style="margin-top: 15px" name="${role}" ${user.userRoles?seq_contains(role)?string("checked", "")}> ${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit" class="btn btn-secondary">Save</button>
    </form>
</@pt.page>