<%@ page import="crud.TipoCarro" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Cadastrar carro</title>
</head>

<body>
<div class="mt-5 container-xl container-fluid mx-auto">
    <g:form method="POST" controller="carro" class="row g-3">

        <h1 class="mb-2 text-uppercase">Cadastrar carro</h1>

        <div class="mb-3 col-md-6">
            <label class="form-label" for="nome">Nome</label>
            <g:textField name="nome" class="form-control"/>
        </div>

        <div class="mb-3 col-md-6">
            <label class="form-label" for="modelo">Modelo</label>
            <g:textField id="modelo" name="modelo" class="form-control"/>
        </div>

        <div class="mb-3 d-flex flex-column mb-3 col-md-6">
            <label class="form-label" for="marca">Marca</label>
            <g:select class="form-select" id="marca" from="${marcas}" optionKey="id" optionValue="nome"
                      name="marca_id"/>
        </div>

        <div class="mb-3 d-flex flex-column mb-3 col-md-6">
            <label class="form-label" for="tipo-carro">Tipo</label>
            <g:select id="tipo-carro" class="form-select" from="${TipoCarro.values()}"
                      optionValue="label" name="tipo"/>
        </div>

        <div class="mb-3 col-md-6">
            <label class="form-label" for="nome">Data de lançamento</label>

            <div>
                <g:datePicker name="dataLancamento"
                              precision="day" years="${1970..(Calendar.getInstance().get(Calendar.YEAR))}"/>
            </div>
        </div>

        <div class="d-flex justify-content-end">
            <g:link class="btn btn-danger me-2" controller="carro" action="index">Cancelar</g:link>
            <g:actionSubmit value="Salvar" class="btn btn-primary" action="save"/>
        </div>

    </g:form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>
</html>