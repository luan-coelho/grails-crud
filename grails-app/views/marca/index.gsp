<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Listagem de marcas</title>
</head>

<body>
<div class="mt-5 container-xl mx-auto">

    <h2 class="text-uppercase">Listagem de marcas</h2>

    <div>
        <g:link class="btn btn-success" controller="marca" action="create">Novo</g:link>
        <g:link class="btn btn-primary" controller="carro" action="index">Listagem de carros</g:link>
    </div>

    <g:form method="POST" controller="marca">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Nome</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${marcas}" var="marca">
                <tr>
                    <td>${marca.nome}</td>
                    <td>
                        <g:link class="btn btn-primary" action="edit" params="[marca_id: marca.id]">Editar</g:link>
                        <g:link class="btn btn-danger" action="delete" params="[marca_id: marca.id]">Deletar</g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </g:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>