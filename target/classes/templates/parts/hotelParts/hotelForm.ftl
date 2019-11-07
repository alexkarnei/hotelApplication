
<style>
#reviewStars-input input:checked ~ label, #reviewStars-input label, #reviewStars-input label:hover, #reviewStars-input label:hover ~ label {
background: url('http://positivecrash.com/wp-content/uploads/ico-s71a7fdede6.png') no-repeat;
}

#reviewStars-input {

/*fix floating problems*/
overflow: hidden;
*zoom: 1;
/*end of fix floating problems*/

position: relative;
float: left;
}

#reviewStars-input input {
filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
opacity: 0;

width: 43px;
height: 40px;

position: absolute;
top: 0;
z-index: 0;
}

#reviewStars-input input:checked ~ label {
background-position: 0 -40px;
height: 40px;
width: 43px;
}

#reviewStars-input label {
background-position: 0 0;
height: 40px;
width: 43px;
float: right;
cursor: pointer;
margin-right: 10px;

position: relative;
z-index: 1;
}

#reviewStars-input label:hover, #reviewStars-input label:hover ~ label {
background-position: 0 -40px;
height: 40px;
width: 43px;
}

#reviewStars-input #star-0 {
left: 0px;
}
#reviewStars-input #star-1 {
left: 53px;
}
#reviewStars-input #star-2 {
left: 106px;
}
#reviewStars-input #star-3 {
left: 159px;
}
#reviewStars-input #star-4 {
left: 212px;
}
#reviewStars-input #star-5 {
left: 265px;
}
</style>

<div class="container mt-5" style="width: 50%">
    <h3 style="color: wheat"> Edit hotel </h3>
    <#if savingReport??>${savingReport}</#if>
    <div class="form-group mt-3">
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if hotelPictures?? && hotelPictures.id??>${hotelPictures.id}</#if>">
            <div class="form-group">
                <input type="text" name="hotelTitle"
                       class="form-control ${(hotelTitleError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.hotelTitle??>${hotel.hotelTitle}</#if>"
                       placeholder="Enter hotel title">
                <div class="invalid-feedback">
                    <#if altError??>${hotelTitleError}</#if>
                </div>
            </div>
            <div class="form-group">
               <#-- <input type="text" name="starsQuantity" class="form-control ${(starsQuantityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.starsQuantity??>${hotel.starsQuantity}</#if>"
                       placeholder="Enter stars quantity">
                <div class="invalid-feedback">
                    <#if titleError??>${titleError}</#if>-->
                <div id="reviewStars-input">
                    <input id="star-4" type="radio" name="reviewStars" value="5"/>
                    <label title="gorgeous" for="star-4"></label>

                    <input id="star-3" type="radio" name="reviewStars" value="4"/>
                    <label title="good" for="star-3"></label>

                    <input id="star-2" type="radio" name="reviewStars" value="3"/>
                    <label title="regular" for="star-2"></label>

                    <input id="star-1" type="radio" name="reviewStars" value="2"/>
                    <label title="poor" for="star-1"></label>

                    <input id="star-0" type="radio" name="reviewStars" value="1"/>
                    <label title="bad" for="star-0"></label>
                </div>
            </div>
            <div class="form-group">
                <input type="text" name="city" class="form-control ${(cityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.city??>${hotel.city}</#if>"
                       placeholder="Enter the city">
                <div class="invalid-feedback">
                    <#if urlError??>${cityError}</#if>
                </div>
            </div>
            <div class="form-group">
                <input type="text" name="address" class="form-control ${(addressError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.address??>${hotel.addreaa}</#if>"
                       placeholder="Enter the address">
                <div class="invalid-feedback">
                    <#if urlError??>${addressError}</#if>
                </div>
            </div>
            <div class="form-group">
                <input type="text" name="roomsQuantity" class="form-control ${(roomsQuantityError??)?string('is-invalid', '')}"
                       value="<#if hotel?? && hotel.rroomsQuantityoomsQ??>${hotel.roomsQuantity}</#if>"
                       placeholder="Enter the room Quantity">
                <div class="invalid-feedback">
                    <#if roomsQuantityError??>${roomsQuantityError}</#if>
                </div>
            </div>
            <div class="form-group mt-2">
                <input type="submit" class="btn btn-primary" value="Submit">
            </div>
        </form>
    </div>
</div>