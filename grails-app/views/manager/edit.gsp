<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/20/2022
  Time: 2:32 AM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="manager" args="['Update']"/>
    </div>
    <div class="card-body">
        <g:form controller="manager" action="update">
            <g:hiddenField name="id" value="${manager.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="manager" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>