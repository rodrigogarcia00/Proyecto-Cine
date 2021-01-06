<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<main>
  <div class="container" id="flex">
      
     <section class="formulario-compra">
       <article>
         <h2>COMPRA</h2>
       </article>
         <article>
             <form:form action="completarCompra" method="POST">
                <div class="form-group">
                  <label for="email">Email </label>
                  <form:input type="email" path="email" id="email" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="nombre">Nombre </label>
                  <form:input type="text" path="nombre" id="nombre" class="form-control"/>
                </div>
                <div class="form-group">                
                  <label for="apellido">Apellido </label>
                  <form:input type="text" path="apellido" id="apellido" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="dni">DNI </label>
                  <form:input type="text" path="dni" id="dni" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="numero_tarjeta">Numero de Tarjeta </label>
                  <form:input type="number" path="numero_tarjeta" id="numero_tarjeta" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="codigo_seguridad">Codigo </label>
                  <form:input type="number" path="codigo_seguridad" id="codigo_seguridad" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="fecha_vencimiento">Fecha de vencimiento</label>
                  <form:input type="text" path="fecha_vencimiento" id="fecha_vencimiento" class="form-control"/>
                </div>
                <div class="form-group">
                  <label for="medio_pago">Medio de Pago</label>
                  <select name="medio_pago" id="medio_pago" class="form-control">
                    <datalist>
                      <option value="visa">Visa</option>
                      <option value="mastercard">Master Card</option>
                      <option value="naranja">Naranja</option>
                    </datalist>
                  </select>
                </div>
                <div>
                  <button type="submit" class="btn btn-primary">CONFIRMAR</button>
                </div>
             </form:form>
         </article>
     </section>
      <section>

        <article class="contenedor-informacion-pelicula">
          
              <div class = "imagenTitulo">
              <img src="img/descarga.jpg">
              <div class = "divInformacionPelicula">
              <h1>Pulp Fiction</h1>
              <div>
              <p class = "edad">+16</p>
              <p>Castellano</p>
              <div class = "ubicacion"> 
              <i class="fas fa-map-marker-alt"></i>
              <h7>Cinemark Hoyts<br>
              Sala 7</h7>
              </div>  
              <p>Vergara 2822, Morón.</p>
              <p>Lunes 19 de Octubre, 22 hs.</p>
          
              </div>

              </div>
              </div>
                
              <div class = "entradaComprar">
              <img src="img/img_54668.png">
              <div class= "left">
              <h7>1 entrada</h7>
              <p>(Entrada general)</p>
              </div>

              <h7 id= "precio">$1200</h7>
              <img src="img/boton-agregar.png">
              <img src="img/boton-de-resta.png">
              </div>

              <div class="total">
                <h3>TOTAL</h3>
                <h3>$1200</h3>
              </div>
            
         
        </article>  

        <article class = "botones">
         <h7 class= "volver">VOLVER</h7>
         <h7 class = "siguiente">SIGUIENTE</h7> 
        </article>

      </section>
    </div>


</main>

<%@include file="footer.jsp"%>