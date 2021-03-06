%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        User List

        <span class="float-right">

            <div class="btn-group">
                <g:link controller="user" action="create" class="btn btn-success">Create</g:link>

            </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-light">
            <tr>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Email</td>

                <th class="action-row">Action</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${users}" var="info">
                <tr>
                    <td>${info?.firstName}</td>
                    <td>${info?.lastName}</td>
                    <td>${info?.email}</td>

                    %{--Table Actions --}%
                    <td>
                        <div class="btn-group">
                            <g:link controller="user" action="details" class="btn btn-secondary" id="${info.id}">Managers</g:link>
                            <g:link controller="user" action="edit" class="btn btn-secondary" id="${info.id}">Edit</g:link>
                            <g:link controller="user" action="delete" id="${info.id}"
                                    class="btn btn-secondary delete-confirmation">Delete</g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>