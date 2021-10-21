<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Disciplinas</title>
        <form action="consultar_disciplina.jsp" method="post">
            <label>Pesquisar por Nome</label>
            <input type="text" name="nome_d" />
            <input type="submit" value="Pesquisar"/>
            <style>
 
            table, td, th {    
                border: 2px solid;
                text-align: left;
                
            }

            table {
                border: 2px solid;
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 15px;
            }
            </style>
        </form> <br>
    </head>
    <body>
        <h1>Consultar Docentes</h1>
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>DISCIPLINA</th>");
                out.print("<th>CARGA HORARARIA</th>");
                out.print("<th>AÇÃO</th>");
            out.print("</tr>");
            DAODisciplina dpo = new DAODisciplina();
            if(request.getParameter("nome_d") == "" || request.getParameter("nome_d") == null){
                ArrayList<Disciplina> lista = dpo.listarDisciplina();
                for(int i=0;i<lista.size();i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome()+"</td>");
                        out.print("<td>"+lista.get(i).getCarga()+"</td>"); 
                        out.print("<td><a href='atualizar_disciplina.jsp?id="
                                + lista.get(i).getId()
                                + "&nome_d="+lista.get(i).getNome()
                                + "&carga_h="+lista.get(i).getCarga()
                                +"'>ATUALIZAR</a>  ");
                        out.print("<a href='excluir_disciplina.jsp?id="
                                + lista.get(i).getId()
                                +"&nome_d="+lista.get(i).getNome()
                                +"'>DELETAR</a></td>");
                    out.print("</tr>");
                }
        }else{
            ArrayList<Disciplina> lista = dpo.listarDisciplinaNome(request.getParameter("nome_d"));
            for(int i=0;i<lista.size();i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome()+"</td>");
                        out.print("<td>"+lista.get(i).getCarga()+"</td>");
                        out.print("<td><a href='atualizar_disciplina.jsp?id="
                                + lista.get(i).getId()
                                + "&nome_d="+lista.get(i).getNome()
                                + "&carga_h="+lista.get(i).getCarga()
                                +"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir_disciplina.jsp?id="
                                + lista.get(i).getId()
                                +"&nome_d="+lista.get(i).getNome()
                                +"'>CLIQUE</a></td>");
                    out.print("</tr>");
                }
            }
        %>
        <a class="btn btn-default" href="index.jsp">Home</a>
</html>
