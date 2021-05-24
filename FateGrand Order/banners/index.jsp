<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banners</title>
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
            <li><a href="../rotacion/index.jsp">Rotaciones Diarias</a></li>
            <li><a href="index.jsp">futuros banners</a></li>
        </ul>
    </nav>
    <%
        ArrayList<String> banners=new ArrayList<String>();
        
        banners.add("Yuga Kshetra");
        banners.add("17M Downloads");
        banners.add("Summer Event");
        banners.add("4 anniversary");
        banners.add("Darknights Memories");
        banners.add("Rerun Summer Camp");
        
    %>
    
        <table id="tablita2" class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>Evento</th>
                    <th>Banner</th>
                </tr>
            </thead>
            <tr>
                <td><%String nombre=banners.get(0);
                    out.println(nombre);%></td>
                <td>Jinako</td>
            </tr>
            <tr>
                <td><%String nombre1=banners.get(1);
                    out.println(nombre1);%></td>
                <td>Okita Souji Alter</td>
            </tr>
            <tr>
                <td><%String nombre2=banners.get(2);
                    out.println(nombre2);%></td>
                <td>W & BluePoison</td>
            </tr>
            <tr>
                <td><%String nombre3=banners.get(3);
                    out.println(nombre3);%></td>
                <td>BB summer</td>
            </tr>
            <tr>
                <td><%String nombre4=banners.get(4);
                    out.println(nombre4);%></td>
                <td>Hokusai saber</td>
            </tr>
            <tr>
                <td><%String nombre5=banners.get(5);
                    out.println(nombre5);%></td>
                <td>Grand Archer</td>
            </tr>
            
        </table>
    </body>
</html>