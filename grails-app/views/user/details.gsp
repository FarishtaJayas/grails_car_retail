%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        ${user.firstName}
    </div>

    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <td>First Name</td>
                <td>Email</td>
                <td>Sales Made</td>

            </tr>
            </thead>
            <tbody>
            <g:each in="${user.managers}" var="info">
                <tr>
                    <td>${info?.firstName}</td>
                    <td>${info?.email}</td>
                    <td>${info?.salesMade}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>