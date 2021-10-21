<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Docentes</title>
        <form action="consultar_professor.jsp" method="post">
            <label>Pesquisar por Nome</label>
            <input type="text" name="nome_p" />
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
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>AÇÃO</th>");
            out.print("</tr>");
            DAOProfessor dpf = new DAOProfessor();
            if(request.getParameter("nome_p") == "" || request.getParameter("nome_p") == null){
                ArrayList<Professor> lista = dpf.listarProfessor();
                for(int i=0;i<lista.size();i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome2()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail()+"</td>"); 
                        out.print("<td>"+lista.get(i).getSenha()+"</td>"); 
                        out.print("<td><a href='atualizar_professor.jsp?id="
                                + lista.get(i).getId()
                                + "&nome_p="+lista.get(i).getNome2()
                                + "&email="+lista.get(i).getEmail()
                                + "&senha="+lista.get(i).getSenha()
                                +"'>ATUALIAZAR</a>  ");
                        out.print("<a href='excluir_professor.jsp?id="
                                + lista.get(i).getId()
                                +"&nome_p="+lista.get(i).getNome2()
                                +"'>DELETAR</a></td>");
                    out.print("</tr>");
                }
        }else{
            ArrayList<Professor> lista = dpf.listarProfessorNome(request.getParameter("nome_p"));
            for(int i=0;i<lista.size();i++){
                    out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome2()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail()+"</td>");
                        out.print("<td>"+lista.get(i).getSenha()+"</td>");
                        out.print("<td><a href='atualizar_professor.jsp?id="
                                + lista.get(i).getId()
                                + "&nome_p="+lista.get(i).getNome2()
                                + "&email="+lista.get(i).getEmail()
                                + "&senha="+lista.get(i).getSenha()
                                +"'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir_professor.jsp?id="
                                + lista.get(i).getId()
                                +"&nome_p="+lista.get(i).getNome2()
                                +"'>CLIQUE</a></td>");
                    out.print("</tr>");
                }
            }
        %>
        <a href="index.jsp">Home</a>
    </body>
</html>