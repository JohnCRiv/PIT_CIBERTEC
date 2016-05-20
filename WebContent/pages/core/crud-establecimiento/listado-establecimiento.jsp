<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    	<title>Establecimiento</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<sj:head jqueryui="true" locale="es"/>
		
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

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-group pull-right m-t-15">
                            <a href="establecimiento-registrar.jsp"><button type="button" class="btn btn-default">Nuevo Establecimiento<span class="m-l-5"><i class="fa fa-user"></i></span></button></a>
                        </div>
                        <h4 class="page-title">Establecimientos</h4>
                        <ol class="breadcrumb">
                            
                        </ol>

                    </div>
                </div>
                <!-- Page-Title -->


                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
	                            <h4 class="m-t-0 header-title"><b>Establecimientos de Pandero</b></h4>
	                            <div class="p-20">
	                            <s:form method="post" action="buscarXdescripcion" >
		                            <label>Establecimiento</label>		                            
		                            <s:textfield name="establecimiento.desBuscar" cssStyle="margin-left:15px;"  />
		                            <sj:submit value="Buscar" button="true" cssClass="btn btn-primary" cssStyle="margin-left:20px;"></sj:submit>
		                        </s:form>
	                            </div>
                                <div class="p-20">
                                        <table class="table table-striped" id="datatable-editable">
			                                <thead>
			                                    <tr>
			                                        <th>Código</th>
			                                        <th>Establecimiento</th>
			                                        <th>Ubicación</th>
			                                        <th>Encargado</th>
			                                        <th>Estado</th>
			                                        <th></th>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                    <s:iterator value="lstEstablecimiento">
			                                    
												<s:url id="idObtener" action="obtenerEstablecimiento">
											 		<s:param name="establecimiento.idEstablecimiento" value="idEstablecimiento"/>
											 	</s:url>
											 	<s:url id="idAnular" action="anularEstablecimiento">
											 		<s:param name="establecimiento.idEstablecimiento" value="idEstablecimiento"/>
											 	</s:url>	
											 	<s:url id="idEliminar" action="eliminarEstablecimiento">
											 		<s:param name="establecimiento.idEstablecimiento" value="idEstablecimiento"/>
											 	</s:url>		
													<tr>
														<s:hidden name="idEstablecimiento"/>
														<td><s:property value="codigoEst"/></td>
														<td><s:property value="descripcion"/></td>
														<td><s:property value="ubicacion"/></td>
														<td><s:property value="encargado"/></td>
														<td><s:property value="estado"/></td>
														<td class="actions">
			                                            	<s:a  href="%{idObtener}" cssClass="on-default edit-row" title="Editar" ><i class="fa fa-pencil"></i></s:a>
			                                            	<s:a href="%{idAnular}" cssClass="on-default remove-row" title="Inhabilitar" ><i class="fa fa-ban"></i></s:a>
			                                            	<s:a href="%{idEliminar}" cssClass="on-default remove-row" title="Eliminar"><i class="fa fa-trash-o"></i></s:a>
			                                            	<!--<s:url var="remoteurl" escapeAmp="false"></s:url>
    															<sj:dialog id="mydialog" href="%{remoteurl}" title="Confirmacion" autoOpen="false" overlayOpacity="0.85" showEffect="scale">
    																<h4>¿Está seguro de inhabilitar este establecimiento?</h4>
    																<s:url id="idAnular" action="anularEstablecimiento">
											 							<s:param name="establecimiento.idEstablecimiento" value="idEstablecimiento"/>
											 						</s:url>
    																<s:a href="%{idAnular}" cssClass="btn btn-md pull-right" >Sí</s:a>
    															</sj:dialog>
   																<sj:a openDialog="mydialog" cssStyle="cursor:pointer;"><i class="fa fa-ban"></i></sj:a>
   																
   															<s:url var="remoteurl2" escapeAmp="false"></s:url>
    															<sj:dialog id="mydialog2" href="%{remoteurl2}" title="Confirmacion" autoOpen="false" overlayOpacity="0.85" showEffect="scale">
    																<h4>¿Está seguro de eliminar este establecimiento?</h4>
    																<s:url id="idEliminar" action="eliminarEstablecimiento">
											 							<s:param name="establecimiento.idEstablecimiento" value="idEstablecimiento"/>
											 						</s:url>
    																<s:a href="%{idEliminar}" cssClass="btn btn-md pull-right" >Sí</s:a>
    															</sj:dialog>
   																<sj:a openDialog="mydialog2" cssStyle="cursor:pointer;"><i class="fa fa-clos"></i></sj:a>-->
			                                        	</td>
													</tr>
												</s:iterator>
			                                   
			                                    
			                                </tbody>
                            			</table>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>

                <s:include value="../../comun/footer.jsp" />

            </div>
        

		

    </body>
</html>