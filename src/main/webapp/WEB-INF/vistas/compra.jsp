<%@include file = "header.jsp" %>
<main>
<div class="container" id="flex">
      <section id="division">
        <article class="titulo-tipo-entrada">
            <h2>GENERAL</h2>
        </article>  
        <article class="contenedor-entrada-general">
            <div class="informacion-entrada">
                <div class="titulo-informacion-entrada">
                 <p>GENERAL CINEMANIA</p>
                </div>
                <div class="logo-descripcion">
                 <img src="img/entradas-de-cine.png" alt="Entrada" class="logo">
                 <p>Entrada general <br>(1 persona)</p>
                </div> 
             </div>
             <div class="precio-entrada">
                 <p>$1000</p>
             </div>
        </article>
        <article class="titulo-tipo-entrada">
            <h2>ENTRADAS CON DESCUENTOS</h2>
        </article>
        <article>
            <div class="agrupacion-entrada">
                <div class="contenedor-entrada-descuento" >
                    <div class="informacion-entrada">
                        <div class="titulo-informacion-entrada">
                        <p>ENTRADA MASTER CARD</p>
                        </div>
                        <div class="logo-descripcion">
                        <img src="img/entradas-de-cine.png" alt="" class="logo">
                        <p>Entrada con tarjeta Master Card <br>(1 persona)</p>
                        </div> 
                    </div>
                    <div class="precio-entrada">
                        <p>$900</p>
                    </div>
                </div>
                <div class="contenedor-entrada-descuento">
                    <div class="informacion-entrada">
                        <div class="titulo-informacion-entrada">
                        <p>ENTRADA VISA</p>
                        </div>
                        <div class="logo-descripcion">
                        <img src="img/entradas-de-cine.png" alt="" class="logo">
                        <p>Entrada con tarjeta Visa <br>(1 persona)</p>
                        </div> 
                    </div>
                    <div class="precio-entrada">
                        <p>$850</p>
                    </div>
                </div>
        </div>
        <div class="agrupacion-entrada">
            <div class="contenedor-entrada-descuento">
                <div class="informacion-entrada">
                    <div class="titulo-informacion-entrada">
                     <p>ENTRADA CINEMANIA</p>
                    </div>
                    <div class="logo-descripcion">
                     <img src="img/entradas-de-cine.png" alt="" class="logo">
                     <p>Entrada con tarjeta Cinemania <br>(1 persona)</p>
                    </div> 
                 </div>
                 <div class="precio-entrada">
                     <p>$800</p>
                 </div>
            </div>
            <div class="contenedor-entrada-descuento">
                <div class="informacion-entrada">
                    <div class="titulo-informacion-entrada">
                     <p>ENTRADA CREDICOOP</p>
                    </div>
                    <div class="logo-descripcion">
                     <img src="img/entradas-de-cine.png" alt="" class="logo">
                     <p>Entrada con Credicoop <br>(1 persona)</p>
                    </div> 
                 </div>
                 <div class="precio-entrada">
                     <p>$900</p>
                 </div>
            </div>
        </div>
        </article>
      </section>
      
      </div>
      <section class="container">
            <article class="titulo-promociones">
                <h2>PROMOCIONES</h2>
            </article>
        </section>
        <section class="contenedor-promociones container">
            
            <article class="contenedor-promo">
                <img src="img/Promo1.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>    
            </article>
            <article class="contenedor-promo">
                <img src="img/Promo2.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>
            </article>
            <article class="contenedor-promo">
                <img src="img/Promo3.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>
            </article>
        </section>
        <section class="contenedor-promociones container">   
            <article class="contenedor-promo">
                <img src="img/Promo4.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>
            </article>
            <article class="contenedor-promo">
                <img src="img/Promo5.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>
            </article>
            <article class="contenedor-promo">
                <img src="img/Promo6.jpeg" alt="">
                <button type="submit" class="btn btn-primary boton-agregar-promocion">Comprar</button>
            </article>
        </section>
</main>
<%@include file ="footer.jsp" %>