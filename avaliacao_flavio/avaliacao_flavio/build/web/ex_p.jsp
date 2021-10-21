<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>

<%
    try{
        DAOProfessor dpf = new DAOProfessor();
        dpf.excluirProfessor(Integer.parseInt(request.getParameter("id")));
        out.print("Professor Excluido!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_professor.jsp'>");   
    }catch(Exception erro){
        throw new RuntimeException("Erro ao executar ou excluir: "+erro);
    }
%>
