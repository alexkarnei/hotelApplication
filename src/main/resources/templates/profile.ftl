<#import "parts/pageTemplate.ftl" as pt>
<@pt.page>
    <h2 style="color: wheat; margin-bottom: 15px"> User: ${username}</h2>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" style="color: wheat">Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" style="color: wheat">Email:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" style="color: wheat">Passport:</label>
            <div class="col-sm-6">
                <input type="text" name="passport" class="form-control" placeholder="Passport" value="${passport!''}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" style="color: wheat">First Name::</label>
            <div class="col-sm-6">
                <input type="text" name="firstName" class="form-control" placeholder="First name" value="${firstName!''}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" style="color: wheat">Last Name::</label>
            <div class="col-sm-6">
                <input type="text" name="lastName" class="form-control" placeholder="Last name" value="${lastName!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-secondary" type="submit">Save</button>
    </form>
</@pt.page>