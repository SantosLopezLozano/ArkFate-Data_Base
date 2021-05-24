<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //recoge los datos del formulario
    request.setCharacterEncoding("UTF-8");
    int CodSer = Integer.parseInt(request.getParameter("CodSer"));
    
    //conecta a la basse de datos
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/arkfate","root", "");
    
    
    //borra datos en la tabla
    String borrado = "DELETE FROM servant WHERE CodSer =" + CodSer;
    Statement s = conexion.createStatement();
    s.execute(borrado);
    
    //vuelve al menú principal
    response.sendRedirect("baseDeDatos.jsp");
%>