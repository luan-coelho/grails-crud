<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Listagem de carros</title>
</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

<div class="mt-5 container-xl mx-auto">

    <h2 class="text-uppercase">Listagem de carros</h2>

    <div>
        <g:link class="btn btn-success" controller="carro" action="create">Novo</g:link>
        <g:link class="btn btn-primary" controller="marca" action="index">Gerênciar marcas</g:link>
    </div>

    <div class="mt-3">
        <g:if test="${carros}">

            <g:form method="POST" controller="carro">
                <table class="table table-striped table-bordered table-hover table-responsive{-sm|-md|-lg|-xl|-xxl}">
                    <thead class="table-dark">
                    <tr>
                        <th scope="col">Nome</th>
                        <th scope="col">Modelo</th>
                        <th scope="col">Data de lançamento</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Tipo</th>
                        <th class="text-center" scope="col">Ação</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${carros}" var="carro">
                        <tr>
                            <td>${carro.nome}</td>
                            <td>${carro.modelo}</td>
                            <td><g:formatDate format="dd/MM/yyyy" date="${carro.dataLancamento}"/></td>
                            <td>${carro.marca}</td>
                            <td>${carro.tipo.getLabel()}</td>
                            <td class="d-flex justify-content-center align-items-center">
                                <g:link name="editar" class="btn btn-primary me-2" action="edit"
                                        params="[carro_id: carro.id]">Editar</g:link>
                                <g:link name="deletar" onclick="confirmacaoParaDeletar()" class="btn btn-danger" action="delete"
                                        params="[carro_id: carro.id]">Deletar</g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </g:form>

        </g:if>
        <g:else>
            <span class="text-center">Não há nenhum carro cadastrado no momento</span>
        </g:else>
    </div>
</div>

<g:javascript src="carro-index.js"/>
</body>
</html>