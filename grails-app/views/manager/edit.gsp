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
        Update
    </div>

    <div class="card-body">
        <g:form controller="manager" action="update">
            <g:hiddenField name="id" value="${manager.id}"/>
        %{--Partial Templating--}%
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="Save"/>
                <g:link controller="manager" action="index" class="btn btn-primary">Cancel</g:link>
            </div>
        </g:form>
    </div>
</div>