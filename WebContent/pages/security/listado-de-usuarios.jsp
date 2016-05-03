<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    	<title>Usuario</title>
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

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-group pull-right m-t-15">
                            <a href="usuario-registrar-modificar.jsp"><button type="button" class="btn btn-default">Nuevo Usuario <span class="m-l-5"><i class="fa fa-user"></i></span></button></a>
                        </div>
                        <h4 class="page-title">Usuarios</h4>
                        <ol class="breadcrumb">
                            
                        </ol>

                    </div>
                </div>
                <!-- Page-Title -->


                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
	                            <h4 class="m-t-0 header-title"><b>Usuarios del sistema</b></h4>
	                            <div class="p-20">
		                            <label>Número Documento</label>
		                            <input style="margin-left:10px" type="text" >
	                            </div>
                                <div class="p-20">
                                        <table class="table table-striped" id="datatable-editable">
			                                <thead>
			                                    <tr>
			                                        <th>Cód. Usuario</th>
			                                        <th>Nombres Completos</th>
			                                        <th>Nombre de Usuario</th>
			                                        <th>Rol</th>
			                                        <th>Estado</th>
			                                        <th></th>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                    <tr class="gradeX">
			                                        <td>USER-00001</td>
			                                        <td>Jhon Angel Cruzado Rivera
			                                        </td>
			                                        <td>jhon.cruzado.rivera@gmail.com</td>
			                                        <td>Cajero</td>
			                                        <td>
			                                        	<span class="label label-table label-success">Activo</span>
			                                        </td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>USER-00002</td>
			                                        <td>Oscar Nicolas Hidalgo Correa
			                                        </td>
			                                        <td>nicolas.hidalgo@gmail.com</td>
			                                        <td>Recepcionista</td>
			                                        <td>
			                                        	<span class="label label-table label-success">Activo</span>
			                                        </td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>USER-00003</td>
			                                        <td>Alfredo Kevin Candia Villagómez
			                                        </td>
			                                        <td>kevin.candia@gmail.com</td>
			                                        <td>Cajero</td>
			                                        <td>
			                                        	<span class="label label-table label-danger">Inactivo</span>
			                                        </td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                </tbody>
                            			</table>
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