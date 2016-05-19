<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    	<title>Editar Establecimiento</title>
    	<sj:head jqueryui="true" locale="es"/>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<link rel="shortcut icon" href="../../../assets/images/favicon_1.ico">
		
		<!--Morris Chart CSS -->
		<link rel="stylesheet" href="../../../assets/plugins/morris/morris.css">
		
		<link href="../../../assets/css/bootstrap.min.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/core.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/components.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/icons.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/pages.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/menu.css" rel="stylesheet"
			type="text/css" />
		<link href="../../../assets/css/responsive.css" rel="stylesheet"
			type="text/css" />
		
		<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		        <![endif]-->
		
		<!-- Modernizr JS -->
		<script src="../../../assets/js/modernizr.min.js"></script>
    </head>

    <body>
		
		<!-- Menu Bar -->
		<s:include value="../../comun/menu_administrador.jsp" />
		<!-- End Menu Bar -->
        
        <!-- =======================
             ===== START PAGE ======
             ======================= -->

        <div class="wrapper">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Establecimiento</h2>
                            <s:form id="idForm"  method="post" action="actualizarEstablecimiento">
                            <s:hidden name="establecimiento.idEstablecimiento"/>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Descripción</label>
                                            <div class="col-md-9">
                                                <s:textfield name="establecimiento.descripcion" cssClass="form-control"/>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Departamento</label>
                                            <s:url id="idDepartamento" action="listarUbigeo"/>
                                            <div class="col-sm-9">
                                                <sj:select 
															href="%{idDepartamento}"
															list="lstDepartamento"
															listKey="codDepartamento"
															listValue="departamento"
															headerKey="-1"
															headerValue="[Seleccione]"
															name="depa"
															cssClass="form-control"
															onChangeTopics="objProvincia,objDistrito"
															onCompleteTopics="objProvincia"
															
												/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Provincia</label>
                                            <s:url id="idProvincia" action="listarUbigeo"/>
                                            <div class="col-sm-9">
                                                <sj:select
															href="%{idProvincia}"
															list="lstProvincia"
															listKey="codProvincia"
															listValue="provincia"
															headerKey="-1"
															headerValue="[Seleccione]"
															name="prov"
															cssClass="form-control"
															reloadTopics="objProvincia"
															onChangeTopics="objDistrito"
															onCompleteTopics="objDistrito"
															
												/>
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label class="col-sm-3 control-label">Distrito</label>
                                            <s:url id="idDistrito" action="listarUbigeo"/>
                                            <div class="col-sm-9">
                                                <sj:select
															href="%{idDistrito}"
															list="lstDistrito"
															listKey="codDistrito"
															listValue="distrito"
															headerKey="-1"
															headerValue="[Seleccione]"
															name="dist"
															cssClass="form-control"
															reloadTopics="objDistrito"
															
												/>
                                            </div>
                                        </div>
                                                              

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-horizontal" role="form">                                                                                                               
                                        
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Dirección</label>
                                            <div class="col-md-9">
                                                <s:textfield name="establecimiento.direccion" cssClass="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Referencia</label>
                                            <div class="col-md-9">
                                                <s:textfield name="establecimiento.referencia" cssClass="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Encargado</label>
                                            <div class="col-md-9">
                                                <s:textfield name="establecimiento.encargado" cssClass="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                        	<div class="col-md-3">
                                        		<div></div>
                                        	</div>
                                        	<div class="col-md-9">
             
	                                            <sj:submit value="Modificar" button="true" cssClass="btn btn-default waves-effect waves-light btn-md pull-rigth"/>
	                                        
                                        	</div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            </s:form>
                        </div>
                    </div>
                    
                 
                </div>
                

                <s:include value="../../comun/footer.jsp" />

            </div>
        </div>

		

    </body>
</html>