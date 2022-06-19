<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/18/2022
  Time: 9:17 AM
--%>
%{--Include Main Layout--}%
<meta name="layout" content="main">
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Vehicle</title>
<body>

<div class="card-body">
    <g:form controller="vehicle" action="save">
        %{--Partial Templating--}%
        <g:render template="form"/>
        <div class="form-action-panel">
            <g:submitButton name="save" class="btn btn-primary" value="${g.message(code: "save")}"/>
            <g:link controller="vehicle" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>

    </g:form>
</div>

</body>
</html>