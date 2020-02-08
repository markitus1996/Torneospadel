<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <nav class="nav">
           <a >Inicio</a>
           <a href="torneos.jsp">Torneos</a>
           <a href="ranking.jsp">Ranking Jugadores</a>
           <a>Zona Usuarios</a>           
          </nav>   
        <nav class="navr">
           <a href="rankingf.jsp">Ranking Femenino</a>
           <a href="ranking.jsp">Ranking General</a>
           <a href="rankingm.jsp">Ranking Masculino</a>
        </nav>
        
        <div class="ranking">
            <p class="tituloranking">Ranking General</p>
        </div>
    </body>
</html>
