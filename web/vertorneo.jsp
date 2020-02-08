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
             <p class="tituloranking">Inscripción Torneo</p>
        </div>
              <div id="contenedor">
                  <div id="contenidos">
                   <p id="columna">Nombre Torneo</p>
                   <p id="columna">Población</p>
                   <p id="columna">Provincia</p>
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
            rs = sta.executeQuery("SELECT * FROM torneos WHERE idtorneo = '"+cod+"'");
         
            while (rs.next()){
               %>
              <div id="contenidos">
                   <p id="columna"><%=rs.getString(2)%></p>
                   <p id="columna"><%=rs.getString(3)%></p>
                   <p id="columna"><%=rs.getString(4)%></p>    
                   <p id="columna"><a href="inscripciontorneo.jsp?cod=<%=rs.getString(1)%>">Inscripciones</a></p>
                   <p id="columna"><a href="cuadrotorneo.jsp?cod=<%=rs.getString(1)%>">Cuadro Torneo</a></p>
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
