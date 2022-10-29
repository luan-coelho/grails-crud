<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Cadastrar marca</title>
</head>

<body>
<div class="mt-5 container-xl mx-auto">

    <h1 class="mb-2 text-uppercase">Cadastrar marca</h1>

    <g:form method="POST" controller="marca">
        <div class="mb-3">
            <label class="form-label" for="nome">Nome</label>
            <g:textField name="nome" class="form-control"/>
        </div>

        <g:link class="btn btn-danger" controller="marca" action="index">Cancelar</g:link>
        <g:actionSubmit value="Salvar" class="btn btn-primary" action="save"/>
    </g:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>