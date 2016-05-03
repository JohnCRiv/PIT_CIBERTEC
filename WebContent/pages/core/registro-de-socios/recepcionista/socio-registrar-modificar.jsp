<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    	<title>Página Ejemplo</title>
		<s:include value="../../../comun/head.jsp" />
    </head>

    <body>
		
		<!-- Menu Bar -->
		<s:include value="../../../comun/menu_recepcionista.jsp" />
		<!-- End Menu Bar -->
        
        <!-- =======================
             ===== START PAGE ======
             ======================= -->

        <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
                
                <!-- Page-Title -->



                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Socio</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Nombres</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Nombres">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label pull-left left">Apellido Paterno</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Apellido Paterno">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Apellido Materno</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Apellido Materno">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Fecha Nac.</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Nacimiento">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Nacionalidad</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Perú</option>
                                                    <option>USA</option>
                                                    <option>Colombia</option>
                                                    <option>Chile</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Tipo Documento</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>DNI</option>
                                                    <option>Extranjería</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Documento</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Numero">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Departamento</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Dep01</option>
                                                    <option>Dep02</option>
                                                    <option>Dep03</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Provincia</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Pro01</option>
                                                    <option>Pro02</option>
                                                    <option>Pro03</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Distrito</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Dis01</option>
                                                    <option>Dis02</option>
                                                    <option>Dis03</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Direccion</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" value="" placeholder="Direccion">
                                            </div>
                                            <div class="col-md-3">
                                            	<input type="button" class="btn btn-primary pull-right" value="Añadir otro"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Telefono</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" value="" placeholder="Telefono">
                                            </div>
                                            <div class="col-md-3">
                                            	<input type="button" class="btn btn-primary pull-right" value="Añadir otro"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Tarjeta Crédito</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Número Tarjeta">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label" for="example-email">Email</label>
                                            <div class="col-md-9">
                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                      
                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                    
                                    	<div class="col-md-12">
	                                    	<label class="control-label col-md-3" style="text-align: left;">Fotografía</label>
	                                    	<div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:5px; height:250px; border:solid 1px #c3c3c3;">
							            	</div>
							            </div>
							            
							            <div class="col-md-12">
	                                    	<label class="control-label col-md-3" style="text-align: left;">Huella Digital</label>
	                                    	<div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:5px; height:250px; border:solid 1px #c3c3c3;">
							            	</div>
							            </div>
							            
							            <div class="col-md-12">
				                            <label class="control-label col-md-3" style="text-align: left;">Firma Digital</label>
				                            <div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:5px; height:125px; border:solid 1px #c3c3c3;">
										    </div>
									    </div>

                                    </form>
   
                                </div>
								
								

                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Datos del Cónyuge</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Nombres</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Nombres">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Apellidos</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Apellidos">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Nacimiento</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Nacimiento">
                                            </div>
                                        </div>

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Nacionalidad</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Perú</option>
                                                    <option>USA</option>
                                                    <option>Colombia</option>
                                                    <option>Chile</option>
                                                </select>
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label class="col-sm-3 control-label">Tipo Documento</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>DNI</option>
                                                    <option>Extranjería</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Documento</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Numero">
                                            </div>
                                        </div>
                                        

                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
				
				<!-- Inline Form -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 0px 5px 5px 5px;">Datos de Hijo(s)</h2>
        
                            <div class="row">

                                <div class="col-sm-12">
                                    <h5 style="padding: 5px 20px 0px 20px;"><b>Hijo 1</b></h5>

                                    <form class="form-inline">
                                        <div class="form-group col-md-4">
                                            <label>Nombres</label>
                                            <input type="text" class="form-control" placeholder="Nombres">
                                        </div>
                                        <div class="form-group col-md-5">
                                            <label for="">Fecha Nacimiento</label>
                                            <input type="email" class="form-control" id="" placeholder="dd/mm/yyyy">
                                        </div>
                                        <button type="submit" class="btn btn-primary waves-effect waves-light btn-md pull-right">
                                            Añadir otro
                                        </button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- end row -->

              	<div class="row">
                    <div class="col-md-12">
                        <div class="card-box">

        
                            <div class="row">

                                <div class="col-md-3">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12">
                                            Grabar
                                        </button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                
                <s:include value="../../../comun/footer.jsp" />

            </div>
        </div>

		<s:include value="../../../comun/scripts-include.jsp" />

    </body>
</html>