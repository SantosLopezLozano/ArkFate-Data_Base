<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rotación de Niveles</title>
        <link rel="shortcut icon" href="../../images/fico.png" type="../images/fico.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../../style/fstyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    </head>
    <body id="bodyindex">
              
        <nav>
        <div class="logo">
            <a href="../../index.html"><img src="../../images/fico.png" alt="Logo Image"></a>
        </div>
        <div class="hamburger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
        <ul class="nav-links">
            <li><a href="../index.html">Inicio</a></li>
            <li><a href="../baseDeDatos.jsp">Servants</a></li>
            <li><a href="../objetos/baseDeDatos2.jsp">Objetos</a></li>
            <li><a href="index.jsp">Rotaciones Diarias</a></li>
            <li><a href="../banners/index.jsp">futuros banners</a></li>
        </ul>
    </nav>
    <%
        Map<String, String> dia = new HashMap<String, String>();
        dia.put("Lunes", "Saber");
        dia.put("Martes", "Archer");
        dia.put("Miercoles", "Lancer");
        dia.put("Jueves", "Berserker");
        dia.put("Viernes", "Rider");
        dia.put("Sábado", "Caster");
        dia.put("Domingo", "Assasin");
    %>

    
    
    
        <table id="tablita2" class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>Día</th>
                    <th>Nivel</th>
                </tr>
            </thead>
    <%
        for ( Map.Entry<String, String> entry : dia.entrySet() ) {
    %>
    
            <tr>
                <td><%= entry.getKey() %></td>
                <td><%= entry.getValue() %></td>
            </tr>
    
    <%
        }
    %>          
        </table>
    </body>
</html>