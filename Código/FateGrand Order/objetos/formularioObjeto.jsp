<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>ModificaObjeto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
    </head>
    <body id="bodyform">
        <div id="form">
            <h1>Modifica Objeto</h1>
            <form action="modificaservant.jsp" method="GET">
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">C�digo Objeto</label>
              <input disabled name="CodObj" value="<%= request.getParameter("CodObj") %>" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="codigoHelp">
              <input name="CodObj" value="<%= request.getParameter("CodObj") %>" type="hidden">
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Nombre Objeto</label>
              <input autocomplete="off" name="NomObj" value="<%= request.getParameter("NomObj") %>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="nombreHelp">
            </div>
            <button id="buttonform" type="submit" class="btn btn-primary">Aceptar</button>
            <button id="buttonform" type="submit" class="btn btn-primary"><a href="baseDeDatos2.jsp">Cancelar</a></button>
        </form>
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>