<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>        
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
    </head>
    <body>
            <h1>Excluir Disciplina</h1>
            <form method="post" action="ex_d.jsp">
                <label for="id">ID</label><br>
                <input type="text" name="id" value="<%=request.getParameter("id") %>" readonly/><br>
                <label for="nome_d">NOME</label><br>
                <input type="text" name="nome_d" value="<%=request.getParameter("nome_d") %>"/><br>
                <input type="submit" value="EXCLUIR"/>
        </form>
    </body>
</html>
