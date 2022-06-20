<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/20/2022
  Time: 11:04 AM
--%>

<meta name="layout" content="auth"/>

<div class="card">
    <div class="card-header">
        User Registration
    </div>
    <div class="card-body">
        <g:form controller="register" action="register">
            <g:render template="/user/form"/>
            <g:submitButton name="registration" value="Registration" class="btn btn-primary"/>
            <g:link controller="login" action="auth" class="btn btn-primary">Back to login</g:link>
        </g:form>
    </div>
</div>