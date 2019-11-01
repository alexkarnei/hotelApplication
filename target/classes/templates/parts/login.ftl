<#include "security.ftl">
<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <#if isRegisterForm>
        <div class="form-group row">
        <label class="col-sm-2 col-form-label">First Name: </label>
        <div class="col-sm-6">
            <input type="text" name="username"
                   class="form-control ${(firstNameError??)?string('is-invalid', '')}" placeholder="First name"
                   value="<#if user??>${user.firstName}</#if>"/>
            <#if firstNameError??>
                <div class="invalid-feedback">
                    ${firstNameError}
                </div>
            </#if>
        </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Last Name: </label>
        <div class="col-sm-6">
            <input type="text" name="username"
                   class="form-control ${(lastNameError??)?string('is-invalid', '')}" placeholder="Last name"
                   value="<#if user??>${user.lastName}</#if>"/>
            <#if lastNameError??>
                <div class="invalid-feedback">
                    ${lastNameError}
                </div>
            </#if>
        </div>
        </div>
        <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Passport: </label>
        <div class="col-sm-6">
            <input type="text" name="username"
                   class="form-control ${(passportError??)?string('is-invalid', '')}" placeholder="Passport"
                   value="<#if user??>${user.passport}</#if>"/>
            <#if passportError??>
                <div class="invalid-feedback">
                    ${passportError}
                </div>
            </#if>
        </div>
        </div>
        </#if>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> User Name: </label>
            <div class="col-sm-6">
                <input type="text" name="username"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}" placeholder="User name"
                       value="<#if user??>${user.username}</#if>"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}" placeholder="Password"
                       value=""/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Password: </label>
                <div class="col-sm-6">
                    <input type="password" name="passwordConfirm"
                           class="form-control ${(passwordConfirmError??)?string('is-invalid', '')}"
                           placeholder="Retype Password"
                           value=""/>
                    <#if passwordConfirmError??>
                        <div class="invalid-feedback">
                            ${passwordConfirmError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Email: </label>
                <div class="col-sm-6">
                    <input type="email" name="email"
                           class="form-control ${(emailError??)?string('is-invalid', '')}" placeholder="some@some.com"
                           value="<#if user??>${user.email}</#if>"/>
                    <#if emailError??>
                        <div class="invalid-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <!--Captcha-->
            <div class="col-sm-4 mb-2">
                <div class="g-recaptcha" data-sitekey="6LcWWbcUAAAAACalmOS_jK4jFzZIk0eUXUQz1JqC"></div>
                <#if captchaError??>
                    <div class="alert alert-danger" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
        <button type="submit" value="Sign In" class="btn btn-primary">
            <#if isRegisterForm>
                Create
            <#else>
                Sign In
            </#if>
        </button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-light">
            <#if users??>Sign Out<#else>Log in</#if>
        </button>
    </form>
</#macro>

