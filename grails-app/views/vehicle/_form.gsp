<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/18/2022
  Time: 9:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
</head>
<div class="form-group">
    <label>
        <g:message code="name"/>*
    </label>
    <g:textField name="name" class="form-control" value="${vehicle?.name}" placeholder="Enter the first name" />
</div>

<div class="form-group">
<g:message code="make"/>*
    </label>
<g:textField name="make" class="form-control" value="${vehicle?.make}" placeholder="Enter the make"/>
</div>

<div class="form-group">
    <label>
        <g:message code="model"/>*
    </label>
    <g:textField name="model" class="form-control" value="${vehicle?.model}" placeholder="Enter the model" />
</div>

<div class="form-group">
    <label>
        <g:message code="price" />
        <g:textField name="price" class="form-control" value="${vehicle.price}" placeholder="Enter the price" />
    </label>
</div>