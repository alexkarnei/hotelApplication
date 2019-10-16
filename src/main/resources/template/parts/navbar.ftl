<#include "security.ftl">
<#import "login.ftl" as l>
<style>
    li {
        list-style-type: none;
    }

    a {
        color: white;
    }

    .navbar-text {
        color: white;
    }

    h3 {
        margin-left: 400px;
        margin-right: 400px;
        color: gray;
        text-align: center;
    }

</style>

<div class="pos-f-t">
    <div class="collapse" id="navbarToggleExternalContent">
        <div class="bg-dark p-4">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/cars">Cars list</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/history">History list</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/owners">Owners list</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>
            </ul>
        </div>
    </div>
    <nav class="navbar navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
                aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <h3> Hotel application </h3>
        <div class="navbar-text mr-3"><#if user??>${name}<#else>Please, login</#if></div>
        <@l.logout/>
    </nav>
</div>
