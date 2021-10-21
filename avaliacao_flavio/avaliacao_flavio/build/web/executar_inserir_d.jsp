<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

<%
    Disciplina dpl = new Disciplina();
    DAODisciplina dpo = new DAODisciplina();
    
    try{
        String nome_d = request.getParameter("nome_d");
        String carga_h = request.getParameter("carga_h");
        
        if(nome_d.equals(null) || carga_h.equals(null)){
                
        }else{
            dpl.setNome(nome_d);
            dpl.setCarga(carga_h);
            dpo.inserirDisciplina(dpl);
            response.sendRedirect("index.jsp");
        }
        
    }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: ",erro);
        }
%>