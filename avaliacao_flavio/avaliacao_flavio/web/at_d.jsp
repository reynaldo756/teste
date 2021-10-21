<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        Disciplina dpl = new Disciplina();
        DAODisciplina dpo = new DAODisciplina();
        dpl.setNome(request.getParameter("nome_d"));
        dpl.setCarga(request.getParameter("carga_h"));
        dpl.setId(Integer.parseInt(request.getParameter("id")));
        dpo.atualizarDisciplina(dpl);
        response.sendRedirect("consultar_disciplina.jsp");
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao atualizar disciplina: "+erro);
    }
%>
