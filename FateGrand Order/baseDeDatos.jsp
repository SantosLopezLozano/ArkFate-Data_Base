<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/arkfate","root", "");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servants Hall</title>
        <link rel="shortcut icon" href="../images/fico.png" type="../images/fico.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../style/fstyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    </head>
    <body id="bodyindex">
              
        <nav>
        <div class="logo">
            <a href="../index.html"><img src="../images/fico.png" alt="Logo Image"></a>
        </div>
        <div class="hamburger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
        <ul class="nav-links">
            <li><a href="index.html">Inicio</a></li>
            <li><a href="baseDeDatos.jsp">Servants</a></li>
            <li><a href="objetos/baseDeDatos2.jsp">Objetos</a></li>
            <li><a href="rotacion/index.jsp">Rotaciones Diarias</a></li>
            <li><a href="banners/index.jsp">futuros banners</a></li>
        </ul>
    </nav>
        
        <h1>Servants <button id="botonbase" type="button" class="btn btn-primary"><a href="formulario.html">Nuevo Servant</a><br></button></h1>
        
        <% 
          Statement s = conexion.createStatement();
          ResultSet listado = s.executeQuery ("SELECT * FROM Servant");
        %>  
        
        <table id="tablita" class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>CodSer</th>
                    <th>Nombre</th>
                    <th>Clase</th>
                    <th>Atk</th>
                    <th>HP</th>
                    <th>Borrar</th>
                    <th>Modificar</th>
                </tr>
            </thead>
            <%
                while (listado.next()) {
                    
                    out.print("<tr>");
                    out.print("<td>");
                    out.println(listado.getString("codSer"));
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.println(listado.getString("nomSer"));
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.println(listado.getString("clasSer"));
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.println(listado.getString("AtkSer"));
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.println(listado.getString("HPSer"));
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.print("<a href='borrasocio.jsp?CodSer=");
                    out.print(listado.getString("CodSer"));
                    out.print("' <i class='bi bi-trash'></i></a>");
                    out.print("</td>");
                    
                    out.print("<td>");
                    out.print("<a href='formulario_1.html?CodSer=");
                    out.print(listado.getString("CodSer"));
                    out.print("' <i class='bi bi-screwdriver'></i></a>");
                    out.print("</td>");
                    
                    out.print("</tr>");
                }          
            %>
        </table>
        
        <%
          conexion.close();
        %>
        
        
        
    </body>
</html>