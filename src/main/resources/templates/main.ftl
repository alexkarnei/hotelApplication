<#include "parts/security.ftl">
<#import "parts/pageTemplate.ftl" as pt>
<#if savingReport??><div>${savingReport}</div></#if>
<@pt.page>
    <h1 style="color: wheat">Hello, <#if user??>${user.username}<#else>guest</#if>!</h1>
    <div style="color: wheat">It's a Hotel application. </div>
        <#--<div class="form-group mt-3">
        <form>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label" style="color: wheat; font-weight: bold">Город: </label>
                <div class="col-sm-6">
                    <input type="text" name="city" class="form-control ${(cityError??)?string('is-invalid', '')}"
                           value="<#if hotel??>${hotel.city}</#if>"
                           placeholder="Введите город">
                    <#if cityError??>
                        <div class="invalid-feedback">
                            ${cityError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label" style="color: wheat; font-weight: bold">Дата заезда: </label>
                <div class="col-sm-6">
                <input type="date" name="checkIn" class="form-control"
                       value=""
                       placeholder="Select checkIn date">
            </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label" style="color: wheat; font-weight: bold">Дата отъезда: </label>
                <div class="col-sm-6">
                <input type="date" name="checkOut" class="form-control"
                       value=""
                       placeholder="Select checkOut date">
            </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div class="form-group mt-2">
                <input class="btn btn-primary" type="submit" value="Поиск"/>
            </div>
        </form>
    </div>-->
</@pt.page>