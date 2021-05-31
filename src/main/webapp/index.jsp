<%@ page import="resource.Agenda" %>
<%@ page import="java.util.List" %>
<%@ page import="database.UsuarioDao" %>
<%@ page import="resource.Usuario" %>
<%@ page import="database.AgendaDao" %>
<%@ page import="database.VacinaDao" %>
<%@ page import="resource.Vacina" %>
<%@ page import="database.AlergiaDao" %>
<%@ page import="resource.Alergia" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agenda de Vacinação</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Manrope', sans-serif;
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container p-5">
    <div class="column">

        <div class="col-lg-12">

            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-agendas-tab" data-bs-toggle="pill" data-bs-target="#pills-agendas" type="button" role="tab" aria-controls="pills-agendas" aria-selected="true">
                        Agendas
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-usuarios-tab" data-bs-toggle="pill" data-bs-target="#pills-usuarios" type="button" role="tab" aria-controls="pills-usuarios" aria-selected="false">
                        Usuários
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-vacinas-tab" data-bs-toggle="pill" data-bs-target="#pills-vacinas" type="button" role="tab" aria-controls="pills-vacinas" aria-selected="false">
                        Vacinas
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-alergias-tab" data-bs-toggle="pill" data-bs-target="#pills-alergias" type="button" role="tab" aria-controls="pills-alergias" aria-selected="false">
                        Alergias
                    </button>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-agendas" role="tabpanel" aria-labelledby="pills-agendas-tab">

                    <div class="row mb-3">
                        <div class="col-lg-12 mb-3">
                            <button class="btn btn-primary">
                                Cadastrar nova agenda
                            </button>
                        </div>
                        <div class="col-lg-12">
                            <div class="new-agenda">
                                <form method="post" action="agendar">
                                    <div class="form-group mb-3">
                                        <label for="period">Situação</label>
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
                    </div>

                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Data</th>
                            <th scope="col">Situação</th>
                            <th scope="col">Usuário</th>
                            <th scope="col">Vacina</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%

                            AgendaDao ad = new AgendaDao();
                            List<Agenda> agendas =  ad.getList();

                            for (Agenda agenda: agendas) {
                        %>
                        <tr>
                            <th scope="col">
                                <%=  agenda.getId() %>
                            </th>
                            <th scope="col">
                                <%=  agenda.getData() %>
                            </th>
                            <th scope="col">
                                <%=  agenda.getSituacao() %>
                            </th>
                            <th scope="col">
                                <%=  agenda.getUsuario().getNome() %>
                            </th>
                            <th scope="col">
                                <%=  agenda.getVacina().getTitulo() %>
                            </th>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="pills-usuarios" role="tabpanel" aria-labelledby="pills-usuarios-tab">

                    <div class="row mb-3">
                        <div class="col-lg-12">
                            <button class="btn btn-primary">
                                Cadastrar novo usuário
                            </button>
                        </div>
                        <div class="col-lg-12 mb-3">
                        </div>
                    </div>

                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Data de Nasc.</th>
                            <th scope="col">Sexo</th>
                            <th scope="col">Cidade</th>
                            <th scope="col">UF</th>
                        </tr>
                        </thead>
                        <tbody>

                        <%
                        UsuarioDao ud = new UsuarioDao();
                        List<Usuario> usuarios =  ud.getList();
                        for (Usuario user: usuarios) {
                        %>

                        <tr>
                            <th scope="col"><%= user.getId() %></th>
                            <th scope="col"><%= user.getNome() %></th>
                            <th scope="col"><%= user.getDataNascimento() %></th>
                            <th scope="col"><%= user.getSexo() %></th>
                            <th scope="col"><%= user.getCidade() %></th>
                            <th scope="col"><%= user.getUf() %></th>
                        </tr>
                        <% } %>

                        </tbody>
                    </table>
                </div>

                <div class="tab-pane fade" id="pills-vacinas" role="tabpanel" aria-labelledby="pills-vacinas-tab">

                    <div class="row mb-3">
                        <div class="col-lg-12 mb-3">
                            <button class="btn btn-primary">
                                Cadastrar nova vacina
                            </button>
                        </div>
                        <div class="col-lg-12">
                        </div>
                    </div>

                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Vacina</th>
                            <th scope="col">Descrição</th>
                            <th scope="col">Doses</th>
                            <th scope="col">Periodicidade</th>
                            <th scope="col">Intervalo</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            VacinaDao vd = new VacinaDao();
                            List<Vacina> vacinas =  vd.getList();

                            for (Vacina vacina: vacinas) {
                        %>
                        <tr>
                            <th scope="col">
                                <%=  vacina.getId() %>
                            </th>
                            <th scope="col">
                                <%=  vacina.getTitulo() %>
                            </th>
                            <th scope="col">
                                <%=  vacina.getDescricao() %>
                            </th>
                            <th scope="col">
                                <%=  vacina.getDoses() %>
                            </th>
                            <th scope="col">
                                <%=  vacina.getPeriodicidade() %>
                            </th>
                            <th scope="col">
                                <%=  vacina.getIntervalo() %>
                            </th>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>

                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="pills-alergias" role="tabpanel" aria-labelledby="pills-alergias-tab">

                    <div class="row mb-3">
                        <div class="col-lg-12 mb-3">
                            <button class="btn btn-primary">
                                Cadastrar nova alergia
                            </button>
                        </div>
                        <div class="col-lg-12">
                            <form method="post" action="alergias" class="col-lg-12">
                                <div class="form-group mb-3">
                                    <label for="alergia">Nome da Alergia</label>
                                    <input type="text" id="alergia" name="alergia" class="form-control" maxlength="75" style="width: auto"/>
                                </div>
                                <button type="submit" class="btn btn-primary">
                                    Adicionar alergia
                                </button>
                            </form>
                        </div>
                    </div>

                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Alergia</th>
                        </tr>
                        </thead>
                        <tbody>

                        <%
                            AlergiaDao ald = new AlergiaDao();
                            List<Alergia> alergias =  ald.getList();
                            for (Alergia alergia: alergias) {
                        %>

                        <tr>
                            <th scope="col"><%= alergia.getId() %></th>
                            <th scope="col"><%= alergia.getNome() %></th>
                        </tr>
                        <% } %>

                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</body>
</html>