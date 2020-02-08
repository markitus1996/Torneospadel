<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet" type="text/css" href="css/torneos.css">
        <title>JSP Page</title>
    </head>
    <body>
          <nav class="nav">
                     <a >Inicio</a>
           <a href="torneos.jsp">Torneos</a>
           <a href="ranking.jsp">Ranking Jugadores</a>
           <a href="usuarios.jsp">Zona Usuarios</a>            
          </nav>
         <div class="ranking">
            <p class="tituloranking">Torneos Disponibles</p>
        </div>
         <%
        String cod=request.getParameter("cod");     
             
        Connection conn = null ;
        Statement sta = null;
        ResultSet rs = null;
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/torneospadel",
                    "root", "root");
            sta = conn.createStatement();
            rs = sta.executeQuery("SELECT * FROM jugadores WHERE idjugador = '"+cod+"'");
         
            while (rs.next()){
               %>
                   <div id="contenedorperfil">
            <div id="contenidoperfil">
                <p id="columnafoto">Foto</p>
                   <p id="columnanombre"><%=rs.getString(2)%></p>
                   <p id="columnanombre"><%=rs.getString(3)%></p>
                   <p id="columnaperfil"><%=rs.getString(4)%></p>
                   <p id="columnaperfil"><%=rs.getString(5)%></p>
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
