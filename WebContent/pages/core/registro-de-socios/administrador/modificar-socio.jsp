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
		<s:include value="../../../comun/menu_administrador.jsp" />
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
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Modificar Socio</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Nombres</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Nombres" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Apellido Paterno</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Apellido Paterno" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Apellido Materno</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Apellido Materno" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Nacimiento</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Nacimiento" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Nacionalidad</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" disabled>
                                                    <option>Perú</option>
                                                    <option>USA</option>
                                                    <option>Colombia</option>
                                                    <option>Chile</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Tipo Documento</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" disabled>
                                                    <option>DNI</option>
                                                    <option>Extranjería</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Documento</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Numero" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Direccion</label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" value="" placeholder="Direccion">
                                            </div>
                                            <div class="col-md-2">
                                            	<input type="button" class="btn btn-primary" value="Añadir otra"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Tarjeta Crédito</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Número Tarjeta" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Telefono</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Telefono" disabled>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">Email</label>
                                            <div class="col-md-10">
                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Email" disabled>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">Usuario</label>
                                            <div class="col-md-10">
                                                <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Usuario" disabled>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Password</label>
                                            <div class="col-md-10">
                                                <input type="password" class="form-control" value="password" disabled>
                                            </div>
                                        </div>
                                        
										<div class="form-group">
                                            <label class="col-md-2 control-label">Motivo</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control" rows="5"></textarea>
                                            </div>
                                        </div>
                                        

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                    
                                    	<div class="col-md-12">
	                                    	<label class="control-label col-md-3" style="text-align: left;">Fotografía</label>
	                                    	<div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:0px">
								                <a class="thumbnail" href="#">
								                    <img class="img-responsive" src="" width="280px;" height="200px;" alt="" >
								                </a>
							            	</div>
							            </div>
							            
							            <div class="col-md-12">
											<label class="control-label col-md-3" style="text-align: left;">Huella Digital</label>
	                                    	<div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:0px;">
								                <a class="thumbnail" href="#">
								                    <img class="img-responsive" src="" width="280px;" height="200px;" border="1px solid;" alt="">
								                </a>
								            </div>
										</div>
                                      

                                    </form>
                                </div>
							<div class="col-md-12">
									<label class="control-label col-md-3" style="text-align: left;">Firma digital</label>
	                                    <div class="col-lg-3 col-md-4 col-xs-6 thumb" style="margin:0px;">
								            <a class="thumbnail" href="#">
								                <img class="img-responsive" src="" width="280px;" height="200px;" border="1px solid;" alt="">
								            </a>
								        </div>
								</div>

                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Datos del Conyuge</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Nombres</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Nombres">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Apellidos</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Apellidos">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Nacimiento</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Nacimiento">
                                            </div>
                                        </div>

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Nacionalidad</label>
                                            <div class="col-sm-10">
                                                <select class="form-control">
                                                    <option>Perú</option>
                                                    <option>USA</option>
                                                    <option>Colombia</option>
                                                    <option>Chile</option>
                                                </select>
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label class="col-sm-2 control-label">Tipo Documento</label>
                                            <div class="col-sm-10">
                                                <select class="form-control">
                                                    <option>DNI</option>
                                                    <option>Extranjería</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Documento</label>
                                            <div class="col-md-10">
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
                                    <h5><b>Hijo 1</b></h5>

                                    <form class="form-inline">
                                        <div class="form-group col-md-4">
                                            <label for="">Nombres</label>
                                            <input type="text" class="form-control" id="" placeholder="Nombres" disabled>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="">Fecha Nacimiento</label>
                                            <input type="email" class="form-control" id="" placeholder="nicolas@example.com" disabled>
                                        </div>
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md pull-right">
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

                                <div class="col-md-12">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12">
                                            Modificar Socio
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