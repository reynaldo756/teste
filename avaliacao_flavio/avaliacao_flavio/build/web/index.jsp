<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .link_button {
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    border: solid 1px #20538D;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.4);
    -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.2);
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.2);
    background: #4479BA;
    color: #FFF;
    padding: 8px 12px;
    text-decoration: none;
}
    </style>
    <body>
        <nav><h1>Bem vindo ao Sistema de Estudos do IFPR</h1</nav><br>
        <br>
        <nav><a class="link_button" href="novo_professor.jsp">Novo Docente</a></nav><br>
        <nav><a class="link_button" href="consultar_professor.jsp">Consultar Docente</a></nav><br>
        <nav><a class="link_button" href="nova_disciplina.jsp">Nova Disciplina</a></nav><br>
        <nav><a class="link_button" href="consultar_disciplina.jsp">Consultar Disciplina</a></nav><br>
    </body>
</html>
