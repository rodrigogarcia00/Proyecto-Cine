
<%@include file="header.jsp" %>  


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




  <main class="container-fluid bg-dark pt-5 pb-5">


    <div class="container pt-4 pb-5">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5 ">
            <div class="card-body pb-0">
              <h5 class="card-title text-center pb-3">Ingresa a tu cuenta</h5>
           
              
              
              <form:form class="form-signin" modelAttribute="usuario" method="POST" action="validacionLogin">
                <div class="form-label-group pb-3">
                  <form:input type="email" path="email" id="email" class="form-control" placeholder="Correo Electronico"/>

                </div>

                <div class="form-label-group pb-3">
                  <form:input type="password" path="contraseña" id="contraseña" class="form-control" placeholder="Contraseña" />
					<!-- Path hace referencia al atributo que posee modelo Usuario hace matcheo -->
	                </div>

	

                <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">Recordar Contraseña</label>
                </div>
                <button class="btn btn-lg  btn-block text-uppercase mt-4 boton-logueo ancla-botones-de-login " type="submit">Iniciar
                  Sesion</button>
                  
                   <!-- Si hay un error lanza el error agregado en el modelmap -->
             <c:if test="${not empty error}">
		<h4><span>${error}</span></h4>
			<br>
			</c:if>
                  
                  <p class="text-center pt-4"><a href="recuperaTuCuenta">¿Olvidaste tu contraseña?</a></p>
                  
                  
                 
                 	<div class="contenedor-boton-logueo d-flex "> 
                   	<div class="g-signin2 m-auto" data-width="259" data-height="40" data-longtitle="true" data-onsuccess="onSignIn">
                  </div>
      </div>
       

                  
                   
                   
                   
               <div id="fb-root" class="d-flex">
               
               <div class="fb-login-button m-auto pt-4 pb-3" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="true" data-use-continue-as="true" data-width=""></div>
               </div>


                
              </form:form>
 
              </div>
              <div class="container ">
                <p class=" text-center">No tienes una cuenta?</p>
               	 <!--<button class="btn btn-lg btn-block btn-registrar mb-5"><a class="ancla-botones-de-login" href="registro">Registrese Aqui</a> </button>  -->
                 <a class="ancla-botones-de-login" href="registro"> <button class="btn btn-lg btn-block btn-registrar mb-5">Registrese Aqui </button>  </a>
              </div>
            
            </div>
          </div>
        </div>
      </div>
    </div>



  </main>

 <%@include file="footer.jsp" %>

