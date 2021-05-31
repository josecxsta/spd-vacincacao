<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Agenda de Vacinação</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>

<body>
<div class="container p-5">
    <div class="column">
        <div class="col-lg-12 mb-3">
            <div class="mb-3">
                <h2>
                    Marcar agendamento
                </h2>
            </div>
            <div>
                <a href="index.jsp">Voltar para menu inicial</a>
            </div>
        </div>

        <form method="post" action="agendar" class="col-lg-12">
                <div class="form-group mb-3">
                    <label for="date">Data:</label>
                    <input type="date" id="date" name="date" class="form-control" maxlength="50" style="width: auto"/>
                </div>
                <div class="form-group mb-3">
                    <label for="period">Período:</label>
                    <select class="form-control" id="period" name="period" style="width: auto">
                        <option value="M">Matutino</option>
                        <option value="V">Vespertino</option>
                        <option value="N">Noturno</option>
                    </select>
                </div>
                <div class="form-group mb-3">
                    <label for="name">Nome do paciente:</label>
                    <input type="input" class="form-control" id="name" name="name" maxlength="50" style="width: auto">
                </div>
                <div class="form-group mb-3">
                    <label for="cpf">CPF:</label>
                    <input type="input" class="form-control" id="cpf" name="cpf" maxlength="11" style="width: auto">
                </div>
                <div class="form-group mb-3">
                    <label for="dose">Dose:</label>
                    <select class="form-control" id="dose" name="dose" style="width: auto">
                        <option value="1">1ª</option>
                        <option value="2">2ª</option>
                    </select>
                </div>
                <div class="form-group mb-3">
                    <label for="local">Local:</label>
                    <input type="input" class="form-control" id="local" name="local" maxlength="50"
                           style="width: auto">
                </div>
                <button type="submit" class="btn btn-primary">
                    Marcar
                </button>
        </form>
    </div>
</div>
</body>

</html>