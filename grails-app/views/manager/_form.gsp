<div class="form-group">
    <label>First Name *</label>
    <g:textField name="firstName" class="form-control" value="${manager?.firstName}" placeholder="Enter the Manager's First name"/>

    <label>Last Name </label>
    <g:textField name="lastName" class="form-control" value="${manager?.lastName}" placeholder="Enter the Manager's Name"/>

    <label>Email *</label>
    <g:textField name="email" class="form-control" value="${manager?.email}" placeholder="Enter the Manager's Name"/>

    <label>No. of sales</label>
    <g:textField name="salesMade" class="form-control" value="${manager?.salesMade}" placeholder="No. of sales"/>


</div>