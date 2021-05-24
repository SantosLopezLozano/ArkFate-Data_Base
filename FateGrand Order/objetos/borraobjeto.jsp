<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //recoge los datos del formulario
    request.setCharacterEncoding("UTF-8");
    int CodObj = Integer.parseInt(request.getParameter("CodObj"));
    
    //conecta a la basse de datos
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/arkfate","root", "");
    
    
    //borra datos en la tabla
    String borrado = "DELETE FROM objeto WHERE CodObj =" + CodObj;
    Statement s = conexion.createStatement();
    s.execute(borrado);
    
    //vuelve al menú principal
    response.sendRedirect("baseDeDatos2.jsp");
%>