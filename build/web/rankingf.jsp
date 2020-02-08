<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link  rel="stylesheet" type="text/css" href="css/torneos.css">
        <title>Jugadores</title>
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
            <p class="tituloranking">Ranking Femenino</p>
        </div>
            <div id="conjugador">
            <div id="contenidojugador">
                   <p id="columnajugador">Jugador</p>
                   <p id="columnajugador">Puntos</p>
                   <p id="columnajugador">Ver Perfil</p>
            </div>
        <%
        Connection conn = null ;
        Statement sta = null;
        ResultSet rs = null;
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/torneospadel",
                    "root", "root");
            sta = conn.createStatement();
            rs = sta.executeQuery("SELECT * FROM jugadores WHERE sexo = 'F' ORDER BY puntos DESC");
         
            while (rs.next()){             
               %>
          <div id="contenidojugador">
                     <p id="columnajugador"><%=rs.getString(2)%><span style="margin-left: 2px;"><%=rs.getString(3)%></span></p>
                   <p id="columnajugador"><%=rs.getString(6)%></p>
                   <a id="columnajugador" href="verperfiljugador.jsp?cod=<%=rs.getString(1)%>">Ver Perfil </a>
                 </div>
               <%
             }
            sta.close();
            rs.close();
            conn.close();
                   
             }catch (Exception e){}
        
    %>
    </body>
</html>
