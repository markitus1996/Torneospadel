<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link  rel="stylesheet" type="text/css" href="css/torneos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                   <p>Inscripción para<%=rs.getString(2)%></p>
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
