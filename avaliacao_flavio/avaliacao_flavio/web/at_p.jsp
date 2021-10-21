<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

<%
    try{
        Professor pfr = new Professor();
        DAOProfessor dpf = new DAOProfessor();
        pfr.setNome2(request.getParameter("nome_p"));
        pfr.setEmail(request.getParameter("email"));
        pfr.setSenha(request.getParameter("senha"));
        pfr.setId(Integer.parseInt(request.getParameter("id")));
        dpf.atualizarProfessor(pfr);
        response.sendRedirect("consultar_professor.jsp");
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao atualizar professor "+erro);
    }
%>
