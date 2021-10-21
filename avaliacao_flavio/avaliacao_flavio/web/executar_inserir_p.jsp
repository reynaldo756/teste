<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

<%
    Professor pfr = new Professor();
    DAOProfessor dpf = new DAOProfessor();
    
    try{
        String nome_p = request.getParameter("nome_p");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        if(nome_p.equals(null) || email.equals(null)  ||  senha.equals(null)){
                
        }else{
            pfr.setNome2(nome_p);
            pfr.setEmail(email);
            pfr.setSenha(senha);
            dpf.inserirProfessor(pfr);
            response.sendRedirect("index.jsp");
        }
        
    }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: ",erro);
        }
%>
