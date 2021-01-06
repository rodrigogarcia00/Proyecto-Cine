<%@include file="header.jsp" %>

<body>
   
    <main>
       <section class="slider-foto-estreno">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/Banner-Xmen.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="img/banner-annabelle3.jpg"class="d-block w-100" alt="...">
              </div>
               <div class="carousel-item">
              <img src="img/banner-harrypotter.jpg" class="d-block w-100 " alt="...">
            <!-- agregarle solo foto en la ultima imagen -->
            </div>
            
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            
            
            
          </div>
       </section>
       
  

      
      <div class="contenedor-titulo-cartelera">

        <h2 >PELICULAS</h2>
      </div>
      <section class="cartelera d-flex flex-wrap ">
         
      
            <article>
              <div class="container d-flex justify-content-center">
                <img src="img/fueradecontrol.jpg" alt="">
              </div>
        
              <p class="titulo-de-peliculas-estreno ">Fuera de control</p>
            </article>
    
    
        
            <article>
              <div class="container d-flex justify-content-center">
                  <img src="img/sintiempoparamorir.jpg ">
                </div>
             
              <p class="titulo-de-peliculas-estreno">Sin tiempo para morir</p>
            </article>
    
     
            <article>
              <div class="container d-flex justify-content-center">
                <img src="img/mujermaravilla.jpg" alt="">
              </div>
            
              <p class="titulo-de-peliculas-estreno">Mujer maravilla</p>
            </article>
    
          
     
            <article>
              <div class="container d-flex justify-content-center">
                <img src="img/tenet.jpg" alt="">
              </div>
         
              <p class="titulo-de-peliculas-estreno">Tenet</p>
            </article>
          
    
            <article>
              <div class="container d-flex justify-content-center">
                <img src="img/trolls.jpg" alt="">
              </div>
              
              <p class="titulo-de-peliculas-estreno">Trolls</p>
            </article>
          
            <article>
              <div class="container d-flex justify-content-center">
                <img src="img/fueradecontrol.jpg" alt="">
              </div>
            
              <p class="titulo-de-peliculas-estreno">Trolls</p>
            </article>
  
      </section>
  </main>
    
 
   <%@ include file="footer.jsp"%>