<%@ page import="resource.Agenda" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Agenda agenda = (Agenda) request.getAttribute("agenda");
%>
<html>

<head>
    <title>Agenda de Vacinação</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</head>

<body>
<div class="container">
    <div class="column ml-5">
        <div class="col-lg-12 mb-3">
            <div class="mb-3">
                <h2>
                    Confirmar vacinação
                </h2>
            </div>
            <div>
                <a href="index.jsp">Voltar para menu inicial</a>
            </div>
        </div>
        <div class="col-lg-12 row">
            <form method="post" action="confirm">
                <span class="ml-5 mr-4">Deseja confirmar a realização da vacina?</span>
                <button class="btn btn-success mr-3" type="submit">Confirmar</button>
                <a class="btn btn-danger" href="index.jsp">Cancelar</a>
            </form>
        </div>
    </div>
</div>
</body>

</html>