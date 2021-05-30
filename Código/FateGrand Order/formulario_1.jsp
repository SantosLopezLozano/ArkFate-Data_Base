<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
    </head>
    <body id="bodyform">
        <div id="form">
            <h1>Modifica Servant</h1>
            <form action="modificasocio.jsp" method="GET">
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Código Servant</label>
              <input disabled name="CodSer" value="<%= request.getParameter("CodSer") %>" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="codigoHelp">
              <input name="CodSer" value="<%= request.getParameter("CodSer") %>" type="hidden">
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Nombre Servant</label>
              <input autocomplete="off" name="NomSer" value="<%= request.getParameter("NomSer") %>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="nombreHelp">
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Clase Servant</label>
              <input autocomplete="off" name="ClaSer" value="<%= request.getParameter("ClaSer") %>" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="estaturaHelp">
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Atk Max</label>
              <input autocomplete="off" name="AtkSer" value="<%= request.getParameter("AtkSer") %>" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="edadHelp">
            </div>
            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">HP Max</label>
              <input autocomplete="off" name="HPSer" value="<%= request.getParameter("HPSer") %>" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="localidadHelp">
            </div>
            <button id="buttonform" type="submit" class="btn btn-primary">Aceptar</button>
            <button id="buttonform" type="submit" class="btn btn-primary"><a href="baseDeDatos.jsp">Cancelar</a></button>
        </form>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>
