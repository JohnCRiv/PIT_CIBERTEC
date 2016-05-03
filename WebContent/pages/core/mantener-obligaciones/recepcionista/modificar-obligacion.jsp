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
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Modificar Registro de Obligaciones de Pagos</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                               
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Obligación</label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" value="" placeholder="OBL-00001" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Socio</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="SOC-00001" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Motivo</label>
                                            <div class="col-md-10">
                                                <textarea class="form-control" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Fecha Emisión</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Fecha">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Monto</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Monto">
                                            </div>
                                        </div>

                                        

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                                    
                                    	<div class="form-group">
                                            <label class="col-sm-2 control-label">Modalidad</label>
                                            <div class="col-sm-10">
                                                <select class="form-control">
                                                    <option>Con fecha de vencimiento</option>
                                                    <option>Sin fecha de vencimiento</option>
                                                    <option>Pago único</option>
                                                </select>
                                            </div>
                                        </div>
                                      	
                                      	<div class="form-group">
                                            <label class="col-sm-2 control-label">Meses</label>
                                            <div class="col-sm-10">
                                                <select class="form-control">
                                                    <option>1</option>
                                                    <option>2</option>
                                                    <option>3</option>
                                                    <option>4</option>
                                                    <option>5</option>
                                                    <option>6</option>
                                                    <option>7</option>
                                                    <option>8</option>
                                                    <option>9</option>
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option>12</option>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Inicio</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Fecha Inicio">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Vencimiento</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Fecha Vencimiento">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Cuota</label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" value="" placeholder="Cuota">
                                            </div>
                                        </div>

                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">

        
                            <div class="row">

                                <div class="col-md-12">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12">
                                            Modificar Generaciòn de Pagos
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