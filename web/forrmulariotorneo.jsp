<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    
        <link  rel="stylesheet" type="text/css" href="css/torneos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <label>Nombre Torneo:</label>
            <input class="formlabeltorneo" type="text" name="nombretorneo" value="nombretorneo"/>
            <label>Población</label>
            <input class="formlabeltorneo" type="text" name="poblacion"/>
            <label>Provincia</label>
            <input class="formlabeltorneo" type="text" name="provincia"/>
            <input class="formlabeltorneo" type="submit" name="creartorneo" value="Crear Torneo"/>  
        </form>
        <%
         if (request.getParameter("creartorneo")!=null){
         String nombretorneo=request.getParameter("nombretorneo");
         String poblacion=request.getParameter("poblacion");
         String provincia=request.getParameter("provincia");
         
         Connection con=null;
         ResultSet rs=null;
         Statement sta=null;
         
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/torneospadel",
                    "root", "root");
            sta = con.createStatement();
        
            sta.executeUpdate("INSERT INTO torneos(nombretorneo,poblacion,provincia) VALUES('"+nombretorneo+",'"+poblacion+"','"+provincia+"')");
            request.getRequestDispatcher("torneos.jsp").forward(request, response);
            
            sta.close();
            rs.close();
            con.close();
                   
             }catch (Exception e){}
            
         
         
            }
         }
        %>
    </body>
</html>
