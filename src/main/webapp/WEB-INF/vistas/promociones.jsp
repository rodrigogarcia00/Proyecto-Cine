<%@ include file="header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <body>
	
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  
  	<main class="container-fluid bg-dark pt-5 pb-5">
      <h2 class="text-center text-light">Promociones</h2>
      
      <!--Seccion Tarjeta de Creditos-->
      <section class="container-fluid slider-tajetas">
        <div id="carouselExampleCaptions" class="carousel slide contenedor-slider-tarjetas">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active" data-interval="10000">
              <a href="promoTarjetaVisa"><img src="img/TarjetaVisa.jpeg" alt="Tarjeta Visa" class="d-block img-lg w-100" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="promoTarjetaVisa" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

            <div class="carousel-item" data-interval="10000">
              <a href="#"><img src="img/TarjetaNaranja.jpeg" alt="Tarjeta Naranja" class="d-block w-100 img-lg" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="#" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

            <div class="carousel-item" data-interval="10000">
              <a href="#"><img src="img/TarjetaMastercard.jpeg" alt="Tarjeta Mastercard" class="d-block w-100 img-lg" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="#" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

            <div class="carousel-item" data-interval="10000">
              <a href="#"><img src="img/TarjetaMacro.jpeg" alt="Tarjeta Macro" class="d-block w-100 img-lg" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="#" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

            <div class="carousel-item" data-interval="10000">
              <a href="#"><img src="img/TarjetaGalicia.jpeg" alt="Tarjeta Galicia" class="d-block w-100 img-lg" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="#" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

            <div class="carousel-item" data-interval="10000">
              <a href="#"><img src="img/TarjetaCredicoop.jpeg" alt="Tarjeta Credicoop" class="d-block w-100 img-lg" width="500" height="400"></a>
              <div class="carousel-caption d-none d-md-block">
                <a href="#" class="btn btn-primary btn-lg">Ver Promociones</a>
              </div>
            </div>

          </div>
          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </section>
      
      <!----------Seccion Promociones de los combos ----------->
      <section class="container-fluid">
        <h3 class="text-light">Nuestros combos</h3>
        <div class="container-fluid row">
          
          <article class="card col text-center tarjetas-promociones">
            <img src="img/Promo1.jpeg" alt="Promocion 1" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
          		<a href="promocionUno" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>	
            </div>          
          </article>
  
          <article class="card col text-center tarjetas-promociones">
            <img src="img/Promo2.jpeg" alt="Promocion 2" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
              <a href="promocionDos" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>
            </div>
          </article>
  
          <article class="card col text-center tarjetas-promociones">
            <img src="img/Promo3.jpeg" alt="Promocion 3" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
              <a href="promocionTres" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>
            </div>
          </article>
        </div>        
        
        <div class="container-fluid row">
          <article class="card text-center col tarjetas-promociones">
            <img src="img/Promo4.jpeg" alt="Promocion 4" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
              <a href="promocionCuatro" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>
            </div>
          </article>
  
          <article class="card text-center col tarjetas-promociones">
            <img src="img/Promo5.jpeg" alt="Promocion 5" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
              <a href="promocionCinco" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>
            </div>
          </article>
  
          <article class="card text-center col tarjetas-promociones">
            <img src="img/Promo6.jpeg" alt="Promocion 6" class="img-fluid img-thumbnail card-img-card w-100 img-tarjeta-promo">
            <div class="card-body">
              <a href="promocionSeis" class="btn btn-dark btn-outline-primary btn-lg border-dark text-light">Ver Promocion</a>
            </div>
          </article>
        </section>
        </div>
        
        <!--Susbripcion a Newsletter-->
        <section class="text-center contenedor-newsletter" >
        	<h4 class="text-light">Suscribase a nuestro <strong>Newsletter</strong></h4>
            <form:form action="confirmacionNewsletter" method="POST" modelAttribute="newsletter">
            	<form:input type="email" path="email" id="email"/>
                <button class="btn  btn-primary" Type="Submit"/>Suscribirse</button>
            </form:form>
            <c:if test="${not empty error}">
            	<h5 class="text-danger"><span>${error}</span></h5>
            </c:if>
        </section>
  	</main>
  	
  	<%@ include file="footer.jsp"%>
  </body>
</html>