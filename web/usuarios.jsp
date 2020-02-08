<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <link  rel="stylesheet" type="text/css" href="css/torneos.css">
    </head>
    <body>
     <nav class="nav">
           <a >Inicio</a>
           <a href="torneos.jsp">Torneos</a>
           <a href="ranking.jsp">Ranking Jugadores</a>
           <a href="usuarios.jsp">Zona Usuarios</a>           
          </nav>     
        <div class="ranking">
            <p class="tituloranking">Zona Usuarios</p>
        </div>
        <div class="formulariousuario">
           <form>
            <label class="usuarioslabel">Email:</label>
            <input class="usuariosinput"type="email" placeholder="pon tu email"/>
            <label  class="usuarioslabel">Contraseña:</label>
            <input class="usuariosinput" type="password" placeholder="pon tu email"/>
            <input class="botonentrar" type="submit"value="Entrar">        
           </form>
        </div>
    </body>
</html>
