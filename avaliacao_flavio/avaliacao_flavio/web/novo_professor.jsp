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
    float:left;
}  
        
      body {
        font-family: 'Josefin Sans', sans-serif;
        margin: 20px auto;
        max-width: 460px;
      }
      
      fieldset {
        padding: 10px 30px 0;
      }

      fieldset > div {
        margin-bottom: 20px;
      }

      button, label, input {
        display: block;
        font-family: inherit;
        font-size: 100%;
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        width: 100%;
        padding: 5px;
        height: 30px;
      }

      input {
        box-shadow: inset 1px 1px 3px #ccc;
        border-radius: 5px;
      }

      input:hover, input:focus {
        background-color: #eee;
      }

      input:required {
        border: 1px solid black;
      }

      input:optional {
        border: 1px solid silver;
      }

      button {
        width: 60%;
        margin: 0 auto;
      }
    </style>
    <body>
        <h1>Novo Docente</h1>
        <form method="post" action="executar_inserir_p.jsp">
            <label for="nome_p">NOME DO DOCENTE</label><br>
            <input type="text" name="nome_p" required/><br>
            <label for="email">EMAIL</label><br>
            <input type="email" name="email" required/><br>
            <label for="senha">SENHA</label><br>
            <input type="password" name="senha" id="password" placeholder="senha" required/><br>
            <input type="submit" value="ENVIAR"/>
            <a class="link_button" href="index.jsp">VOLTAR</a>
        </form>
    </body>
</html>
