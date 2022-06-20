<%--
  Created by IntelliJ IDEA.
  User: Farishta
  Date: 6/20/2022
  Time: 2:59 AM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="manager" args="['Details']"/>
    </div>
    <div class="card-body">
        <g:if test="${manager}">
            <table class="table">
                <tr>
                    <th class="text-right"><g:message code="first.name"/></th><td class="text-left">${manager.firstName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="last.name"/></th><td class="text-left">${manager.lastName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="email"/></th><td class="text-left">${manager.email}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="sales.made"/></th><td class="text-left">${manager.salesMade}</td>
                </tr>
            </table>
        </g:if>
        <div class="form-action-panel">
            <g:link controller="manager" action="index" class="btn btn-success"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>