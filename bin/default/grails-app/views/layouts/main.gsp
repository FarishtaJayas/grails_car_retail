<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<div class="h-100 d-flex align-items-center justify-content-center centered">
<div class="container-fluid">
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Customer Tracking</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Add Owner</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Add Car</a>
        </li>
%{--        <li class="nav-item">--}%
%{--            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--}%
%{--        </li>--}%
    </ul>




<main>
<g:layoutBody/>
</main>

</div>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
