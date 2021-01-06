<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>

	<main>
		<section>
            <article class="container"> 
                <div class="container">
                  <h2>Modificar datos</h2>
                </div>  
                <form:form action="validarModificarDatos" method="POST" modelAttribute="usuario" >
                  <div class="form-group">
                    <label for="nombre">Nombre: </label>
                    <form:input type="text" path="nombre" id="nombre" class="form-control"/>
                    
                  </div>
                  <div class="form-group">
                    <label for="apellido">Apellido: </label>
                   <form:input type="text" path="apellido" id="apellido" class="form-control"/>
                  </div>
                  <div class="form-group">
                   <label for="email">Email: </label>
                    <form:input type="email" path="email" id="email" class="form-control"/>
                  </div>
                  <div class="form-group">
                    <label for="contraseña">Contraseña: </label>
                    <form:input type="password" path="contraseña" id="contraseña" class="form-control"/>
                  </div>
                    <button type="submit" class="btn btn-primary" id="boton-guardar">Guardar</button>

					<c:if test="${not empty error}">
						<h4><span>${error}</span></h4>
							<br>
							</c:if>
							
                </form:form>
            </article>
        </section>
	</main>

<%@ include file="footer.jsp" %>