<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    //recoge los datos del formulario
    request.setCharacterEncoding("UTF-8");
    int CodSer = Integer.parseInt(request.getParameter("CodSer"));
    String nomSer = request.getParameter("nomSer");
    String clasSer = request.getParameter("clasSer");
    int AtkSer = Integer.parseInt(request.getParameter("AtkSer"));
    int HPSer = Integer.parseInt(request.getParameter("HPSer"));
    
    //conecta a la basse de datos
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArkFate","root", "");
    
    
    //inserta datos en la tabla
    String insercion = "INSERT INTO servant VALUES ("
            + CodSer + ", '" + nomSer + "', '"
            + clasSer + "', " + AtkSer + ", " + HPSer + ")";
    out.print(insercion); //para ver si funciona
    Statement s = conexion.createStatement();
    s.execute(insercion);
    
    //vuelve al menú principal
    response.sendRedirect("baseDeDatos.jsp");
%>