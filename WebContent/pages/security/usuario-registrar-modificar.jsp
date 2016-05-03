<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    	<title>Registrar Usuario</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<link rel="shortcut icon" href="../../assets/images/favicon_1.ico">
		
		<!--Morris Chart CSS -->
		<link rel="stylesheet" href="../../assets/plugins/morris/morris.css">
		
		<link href="../../assets/css/bootstrap.min.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/core.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/components.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/icons.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/pages.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/menu.css" rel="stylesheet"
			type="text/css" />
		<link href="../../assets/css/responsive.css" rel="stylesheet"
			type="text/css" />
		
		<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		        <![endif]-->
		
		<!-- Modernizr JS -->
		<script src="../../assets/js/modernizr.min.js"></script>
    </head>

    <body>
		
		<!-- Menu Bar -->
		<s:include value="../comun/menu_administrador.jsp" />
		<!-- End Menu Bar -->
        
        <!-- =======================
             ===== START PAGE ======
             ======================= -->

        <div class="wrapper">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Usuario</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                               			<div class="form-group">
                               				<label class="col-md-5 control-label"><h4><strong>DATOS PERSONALES</strong></h4></label>
                               			</div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Nombres</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Apellido Paterno</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value=""  >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Apellido Materno</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value=""  >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Tipo Documento</label>
                                            <div class="col-sm-9">
                                                <select class="form-control" >
                                                    <option>DNI</option>
                                                    <option>Carn� de Extranjer�a</option>
                                                    <option>Pasaporte</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">N�mero Doc.</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                        	<div class="col-md-3">
                                        		
                                        	</div>
                                        </div>                         

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">                                                                                                               
                                        
                                        <div class="form-group">
                               				<label class="col-md-5 control-label"><h4><strong>DATOS DE LA CUENTA</strong></h4></label>
                               			</div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Usuario</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value=""  >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Contrase�a</label>
                                            <div class="col-md-9">
                                                <input type="password" class="form-control" value="" >
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Rol</label>
                                            <div class="col-sm-9">
                                                <select class="form-control" >
                                                    <option>Administrador</option>
                                                    <option>Recepcionista</option>
                                                    <option>Cajero</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">E-mail</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                        	<div class="col-md-3">
                                        		<div></div>
                                        	</div>
                                        	<div class="col-md-9">
                                        		<button type="submit" class="btn btn-default waves-effect waves-light btn-md pull-rigth">
	                                            Grabar
	                                        	</button>
                                        	</div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                 
                </div>
                

                <s:include value="../comun/footer.jsp" />

            </div>
        </div>

		<s:include value="../comun/scripts-include.jsp" />

    </body>
</html>