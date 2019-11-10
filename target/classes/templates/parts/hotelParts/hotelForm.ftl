<div class="container mt-5" style="width: 50%">
    <h3 style="color: wheat"> Edit hotel </h3>
    <#if savingReport??>${savingReport}</#if>
    <div class="form-group mt-3">
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if hotel?? && hotel.id??>${hotel.id}</#if>">
            <div class="form-group">
                <input type="text" name="hotelTitle"
                       class="form-control ${(hotelTitleError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.hotelTitle??>${hotel.hotelTitle}</#if>"
                       placeholder="Enter hotel title">
                <#if hoteTitleError??>
                    <div class="invalid-feedback">
                        ${hotelTitleError}
                    </div>
                </#if>
            </div>
           <div class="form-group">
                <input type="number" name="starsQuantity" class="form-control ${(starsQuantityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.starsQuantity??>${hotel.starsQuantity}</#if>"
                       placeholder="Enter the stars Quantity">
                <#if starsQuantityError??>
                    <div class="invalid-feedback">
                        ${starsQuantityError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" name="city" class="form-control ${(cityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.city??>${hotel.city}</#if>"
                       placeholder="Enter the city">
                <#if cityError??>
                    <div class="invalid-feedback">
                        ${cityError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="text" name="address" class="form-control ${(addressError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.address??>${hotel.address}</#if>"
                       placeholder="Enter the address">
                <#if addressError??>
                    <div class="invalid-feedback">
                        ${addressError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="number" name="roomsQuantity" class="form-control ${(roomsQuantityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.roomsQuantity??>${hotel.roomsQuantity}</#if>"
                       placeholder="Enter the room Quantity">
                <#if roomsQuantityError??>
                    <div class="invalid-feedback">
                        ${roomsQuantityError}
                    </div>
                </#if>
            </div>
            <div class="form-group mt-2">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</div>