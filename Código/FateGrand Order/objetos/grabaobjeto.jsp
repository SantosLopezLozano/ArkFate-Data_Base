<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //recoge los datos del formulario
    request.setCharacterEncoding("UTF-8");
    String NomObj = request.getParameter("NomObj");
    
    //conecta a la basse de datos
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArkFate","root", "");
    
    
    //inserta datos en la tabla
    String insercion = "INSERT INTO objeto (NomObj) VALUES ("
            + " '" + NomObj + "')";
    out.print(insercion); //para ver si funciona
    Statement s = conexion.createStatement();
    s.execute(insercion);
    
    //vuelve al menú principal
    response.sendRedirect("baseDeDatos2.jsp");
%>