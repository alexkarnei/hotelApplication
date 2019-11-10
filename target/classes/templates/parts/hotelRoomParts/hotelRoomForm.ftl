<div class="container mt-5" style="width: 50%">
    <h3 style="color: wheat"> Edit hotelRoom </h3>
    <#if savingReport??>${savingReport}</#if>
    <div class="form-group mt-3">
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if hotelRoom?? && hotelRoom.id??>${hotelRoom.id}</#if>">
           <#-- <div class="form-group">
                <#list roomType as type>
                    <div>
                        <label style="color: wheat">
                            <input type="checkbox" style="margin-top: 15px" name="${type}" ${userRoom.roomType?seq_contains(type)?string("checked", "")}> ${type}
                        </label>
                    </div>
                </#list>
            </div>-->
            <div class="form-group">
                <input type="number" name="cost" class="form-control ${(costError??)?string('is-invalid', '')}"
                       value="<#if hotelRoom?? && hotelRoom.cost??>${hotelRoom.cost}</#if>"
                       placeholder="Enter cost hotel room">
                <#if costError??>
                    <div class="invalid-feedback">
                        ${costError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="date" name="checkIn" class="form-control ${(checkInError??)?string('is-invalid', '')}"
                       value=""
                       placeholder="Enter the checkIn date">
                <#if checkInError??>
                    <div class="invalid-feedback">
                        ${checkinError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <input type="date" name="checkOut" class="form-control ${(chekOutError??)?string('is-invalid', '')}"
                       value=""
                       placeholder="Enter the checkOut date">
                <#if checkOutError??>
                    <div class="invalid-feedback">
                        ${checkOutError}
                    </div>
                </#if>
            </div>
            <div class="form-group mt-2">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</div>