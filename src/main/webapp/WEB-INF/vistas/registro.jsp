<%@include file="header.jsp" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<main class="container-fluid bg-dark pt-5 pb-5">


    <div class="container pt-4 pb-5">
      <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          <div class="card card-signin my-5">
            <div class="card-body pb-0">
              <h5 class="card-title text-center pb-3">Registrate</h5>
              <form:form class="form-signin" method="POST" action="guardarUsuario" modelAttribute="usuario">
                
                <div class="form-label-group pb-3">
                    <form:input type="text" id="nombre" path="nombre" class="form-control" placeholder="Nombre" 
                       />
  	
                  </div>
                   
                   
                   
                  <div class="form-label-group pb-3">
                    <form:input type="text" id="apellido" path="apellido" class="form-control " placeholder="Apellido" 
                       />
  					
                  </div>
                  
                  
                <div class="form-label-group pb-3">
                  <form:input type="email" id="email" path="email" class="form-control " placeholder="Correo Electronico" 
                    />

                </div>

                <div class="form-label-group pb-3">
                  <form:input type="password" id="contraseña" path="contraseña" class="form-control" placeholder="Contraseña"/>

                </div>

               
                <button class="btn btn-lg  btn-block text-uppercase mt-4 boton-logueo ancla-botones-de-login " type="submit">Registrarse
                	</button>
                  
                <c:if test="${not empty error}">
		<h4><span>${error}</span></h4>
			<br>
			</c:if>
              
              
                  <hr class="my-4">
                
             
               
              </form:form>
 
              </div>
             
            
            </div>
          </div>
        </div>
      </div>
    </div>


  </script>
  </main>





<%@include file="footer.jsp" %>