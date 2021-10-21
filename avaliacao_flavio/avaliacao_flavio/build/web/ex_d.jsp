<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        DAODisciplina dpo = new DAODisciplina();
        dpo.excluirDisciplina(Integer.parseInt(request.getParameter("id")));
        out.print("Disciplina Excluida!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_disciplina.jsp'>");   
    }catch(Exception erro){
        throw new RuntimeException("Erro ao executar ou excluir: "+erro);
    }
%>