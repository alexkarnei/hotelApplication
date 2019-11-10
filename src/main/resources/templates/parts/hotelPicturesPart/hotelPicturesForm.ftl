<div class="container mt-5" style="width: 50%">
    <h3 style="color: wheat"> Edit hotel pictures </h3>
    <#if savingReport??>${savingReport}</#if>
    <div class="form-group mt-3">
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if hotelPictures?? && hotelPictures.id??>${hotelPictures.id}</#if>">
            <div class="form-group">
                <input type="text" name="title" class="form-control ${(titleError??)?string('is-invalid', '')}"
                       value="<#if hotelPictures?? && hotelPictures.title??>${hotelPictures.title}</#if>"
                       placeholder="Enter the title">
                <#if titleError??>
                <div class="invalid-feedback">
                    ${titleError}
                </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" name="url" class="form-control ${(urlError??)?string('is-invalid', '')}"
                       value="<#if hotelPictures?? && hotelPictures.url??>${hotelPictures.url}</#if>"
                       placeholder="Enter the url">
                <#if urlError??>
                <div class="invalid-feedback">
                    ${urlError}
                </div>
                </#if>
            </div>
            <div class="form-group mt-2">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</div>
