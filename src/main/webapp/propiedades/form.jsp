<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="cruzllaguento.dominio.Propiedades"%>
<%
String control;
Propiedades reg = (Propiedades) request.getAttribute("reg");
if(reg==null){
	reg.setId(0);
}
if(reg.getId()==0){
	control="store";
}else{
	control="update";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sistema - Plantilla</title>
<meta name="robots" content="noindex">
<meta name="googlebot" content="noindex">
<%@include file="../layouts/maincss.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<%@include file="../layouts/navbar.jsp"%>
		<%@include file="../layouts/menu.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header"></div>
			<!-- /.content-header -->
			<!--CONTENIDO-->
			<!-- TABLA -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- /.col-md-6 -->
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h5 class="m-0">
										Propiedades
									</h5>
								</div>
								<div class="card-body">
									<form action="propiedades?accion=<%=control%>" method="post">
				                    	     <input type="hidden" name="id"
												class="form-control" value="<%=reg.getId()%>" />
												<div class="row"
												 >
				                    	     <div class="col-md-6">
				                    	           <label>Nombre</label>
				                    	           <input
												type="text" name="nombre" class="form-control"
												value="<%=reg.getNombre()%>" />
												<label>Caracteristicas</label>
				                    	           <input
												type="text" name="caracteristicas" class="form-control"
												value="<%=reg.getCaracteristicas()%>" />
												
												<label>Precio Alquiler</label>
				                    	           <input
												type="text" name="precioalquiler" class="form-control"
												value="<%=reg.getPrecioalquiler()%>" />
												
				                    	     </div>
				                    	     
				                    	     <div class="col-md-6">
				                    	     <label>Dirección</label>
				                    		<input
												type="text" name="direccion" class="form-control"
												value="<%=reg.getDireccion()%>" />
												
												<label>Estado</label>
				                    		<input
												type="text" name="estado" class="form-control"
												value="<%=reg.getEstado()%>" />
				                    	     </div>
				                    		</div>
				                    		
												
				                    		
												<br/>
				                    		<button type="submit" class="btn btn-primary">Guardar</button>
				                    		<a href="propiedades" class="btn btn-default">Cancelar</a>
				                    	
			                    	</form>
								</div>
							</div>
						</div>
						<!-- /.col-md-6 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- FIN TABLA -->
			<!--FIN CONTENIDO-->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="../layouts/footer.jsp" %>
		</div>
	<!-- ./wrapper -->
	<div class="modal fade" id="modal-update">
		<div class="modal-dialog modal-lg"></div>
	</div>
	<%@include file="../layouts/mainjs.jsp" %>
  <script>
	//Marcando las opciones de menú
	  $('#liAlmacen').addClass("menu-open");      
	  $('#liCategoria').addClass("active");
	  $('#aAlmacen').addClass("active");
  </script>
</body>
</html>