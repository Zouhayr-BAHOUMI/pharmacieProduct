<%-- 
    Document   : ajouter
    Created on : 3 avr. 2024, 15:00:31
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" height="50px">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#" style="color: black; font-size: 17px;">Ajouter produit</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="view.html" style="color: black; font-size: 17px;">view list produit</a>
                </li>
              </ul>

            </div>
          </div>
        </nav>



        <h4>Ajouter produit</h4>
        <form method="post" action="ProduitServlet">
        <div class="container forn-dlt">
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6"  class="col-form-label">Nom d'article:</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="inputPassord6" name="article" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>

        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6" class="col-form-label">Quantity :</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="inputPassword6" name="quantity" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>

        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6" class="col-form-label">Prix du produit :</label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="inputPassword6" name="prix" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>
           
            
        <div class="row g-3 align-items-center">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6" class="col-form-label">Description : </label>
          </div>
          <div class="col-auto col-lg-8">
            <input type="text" id="inputPassword6" name="description" class="form-control" aria-describedby="passwordHelpInline">
          </div>
        </div>


        <div class="row g-3 align-items-centerr">
          <div class="col-auto col-lg-4">
            <label for="inputPassword6" class="col-form-label"></label>
          </div>
          <div class="col-auto col-lg-8">
           <input type="submit" value="save" name="">
          </div>
        </div>

        </div>
        </form>
    </body>
</html>
