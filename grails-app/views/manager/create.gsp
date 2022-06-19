<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/20/2022
  Time: 12:31 AM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="manager" args="['Create']"/>
    </div>
    <div class="card-body">
        <g:form controller="manager" action="save">

        %{--Partial Templating--}%
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-success" name="save" value="${g.message(code: "save")}"/>
                <g:link controller="manager" action="index" class="btn btn-danger"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>