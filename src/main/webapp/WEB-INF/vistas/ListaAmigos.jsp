<%@ include file="Header.jsp" %>
	<div class="container">

          <h3>Mi lista de Amigos</h3>
          
          <div class="container">

          <hr>
          </p>
		<c:forEach items="${miListaDeAmigos}" var="usuario">
          <ul class="list-unstyled list-thumbs row">

            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="PerfilUsuario" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2> 
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
             <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
          </ul>
		</c:forEach>
        </div>
	<div class="clearfix"></div>
<%@ include file="Footer.jsp" %>