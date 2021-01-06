<%@include file="header.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main class=" pb-5 fondo-cartelera container-fluid ">
      <section class="container-fluid pt-4 pb-5 ">
      <form:form action="compra">	
            <article class="data-list-cines">
          		<select name="cines" id="cine">
            		<!-- La variable utilizada en el foreach tenemos que usar para mostrar los datos -->
            		<c:forEach var="sucursales" items="${cartelera.sucursales}" begin="0">
            			<option value="${sucursales.nombre}">${sucursales.nombre}</option>
            		</c:forEach>
          		</select>
            
          		<select name="peliculas" id="pelicula">
            		<c:forEach var="peliculas" items="${cartelera.peliculas}" begin="0">
            			<option value="${peliculas.titulo}">${peliculas.titulo}</option>
            		</c:forEach>

        		</select>
      		</article>
      		<button type="submit" class="btn btn-dark boton-comprar w-50">Comprar</button>
      </form:form>
        
    		

    	<article class="horarios-disponibles-peliculas ">
        	<p>Hoy</p>
        	<p>${cartelera.fecha}</p>
    	</article>
    </section>

   


    <section class="container-fluid d-flex justify-content-between">
         
                    
                        <article class="contenedor-horarios col-4">
    
                            <p class="pb-4 pt-2  text-center titulo-horario-cine-especificado ">Horarios ${nombrecine} para hoy</p>
                        
                            <p class="horarioCine">${cartelera.horario}</p>
                            <button type="submit" class="btn btn-dark boton-comprar w-50">Comprar</button>
                        
                        
                        </article>
                 
                    

              
                
            
                <article class="col-4 bg-secondary d-flex ">
                        <div class="col-6">
                            <div>
                                <img src="img/sintiempoparamorir.jpg" alt="">
                            </div>
                            <p>Género:${genero}</p>
                            <p>Duracion: ${duracion}</p>
                        </div>
                       
                        <div class="col-6">
                            <p>Jamie Lee Regresa a su iconico PersonaJE</p>
                        </div>
                  
                      
              
        
                </article>
              
            
            
            
      
    
    </section>
       
     
      
       
      

    </main>











<%@include file="footer.jsp" %>