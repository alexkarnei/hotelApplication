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
</style>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">HotelApp</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Home </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/hotel">Hotel list</a>
            </li>
            <#if !user??>
                <li class="nav-item">
                    <a class="nav-link" href="/registration">Registration</a>
                </li>
            </#if>
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
        <div class="navbar-text mr-3"><#if user??>${name}<#else> Please, login</#if></div>
        <@l.logout/>
    </div>
</nav>