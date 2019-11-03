<#include "security.ftl">
<#import "login.ftl" as l>
<link rel="stylesheet" href="../../static/css/pageTemplate.css" type="text/css" media="screen"/>

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">HotelApp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Home </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/hotel">Hotel list</a>
            </li>
            <#--<li class="nav-item">
                <a class="nav-link" href="/hotelRoom">Hotel room list</a>
            </li>-->
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
                aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-text mr-3"><#if user??>${name}<#else> Please, login</#if></div>
        <@l.logout/>
    </div>
</nav>