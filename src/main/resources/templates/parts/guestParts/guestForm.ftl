<h3>Edit guest</h3>
<#if savingReport??>
    <div>${savingReport}</div></#if>
<div class="form-group mt-3">
    <form method="post">

        <input type="hidden" name="id" value="<#if guest?? && guest.id??>${guest.id}</#if>">

        <div class="form-group">
            <input type="text" name="firstName"
                   class="form-control ${(firstNameError??)?string('is-invalid', '')}"
                   value="<#if guest??>${guest.firstName}</#if>" placeholder="Enter the firstName">
            <#if firstNameError??>
                <div class="invalid-feedback">
                    ${firstNameError}
                </div>
            </#if>
        </div>
        <div class="form-group">
            <input type="text" name="lastName"
                   class="form-control ${(lastNameError??)?string('is-invalid', '')}"
                   value="<#if guest??>${guest.lastName}</#if>" placeholder="Enter the last name">
            <#if lastNameError??>
                <div class="invalid-feedback">
                    ${lastNameError}
                </div>
            </#if>
        </div>
        <div class="form-group">
            <input type="text" name="passport"
                   class="form-control ${(passportError??)?string('is-invalid', '')}"
                   value="<#if guest??>${guest.passport}</#if>" placeholder="Enter the passport">
            <#if passportError??>
                <div class="invalid-feedback">
                    ${passportError}
                </div>
            </#if>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="form-group mt-2">
            <input class="btn btn-primary" type="submit" value="Submit"/>
        </div>
    </form>
</div>