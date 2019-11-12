<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<div class="container mt-5" style="width: 50%">
    <h3 style="color: wheat"> Edit hotelRoom </h3>
    <#if savingReport??>${savingReport}</#if>
    <div class="form-group mt-3">
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if hotelRoom?? && hotelRoom.id??>${hotelRoom.id}</#if>">
            <div class="form-group">
                <select class="form-control" id="dropdown" onchange="changeHiddenInput(this)">
                    <option value="">Choose room type</option>
                    <option value="SINGLE">Single</option>
                    <option value="DOUBLE">Double</option>
                    <option value="TRIPLE">Triple</option>
                    <option value="QUADRUPLE">Quadruple</option>
                </select>
                <input id="hiddenInput" type="hidden" name="roomType"
                       value="<#if hotelRoom?? && hotelRoom.roomType??>result</#if>">
            </div>
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
                <input type="submit" class="btn btn-primary" onclick="changeHiddenInput (objDropDown)" value="Submit">
            </div>
        </form>
    </div>
</div>
<script>
    var select;
    window.onload = function () {
        select = document.getElementById('dropdown');
        console.log(select);
    }

    function changeHiddenInput(objDropDown) {
        console.log(objDropDown);
        var objHidden = document.getElementById("hiddenInput");
        objHidden.value = objDropDown.value;
        var a = objHidden.value;
        var result;
        result.innerHTML = a || "";
    }
</script>