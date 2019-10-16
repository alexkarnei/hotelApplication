<#import "parts/pageTemplate.ftl" as pt>
<@pt.page>
    <#include "parts/guestParts/guestList.ftl">
    <#include "parts/guestParts/guestForm.ftl">
</@pt.page>


<nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent"
            aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <h3> Hotel application </h3>
    <div class="navbar-text mr-3"><#if user??>${name}<#else>Please, login</#if></div>