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
		<s:include value="../../../comun/menu_cajero.jsp" />
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
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Registrar Pago de Obligaciones</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                               
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Obligacion</label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" value="" placeholder="OP-000001" disabled="disabled">
                                            </div>
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-primary" value="Buscar">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Socio</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Nicolas Hidalgo Correa" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Tipo Obligación</label>
                                            <div class="col-sm-9">
                                                <select class="form-control" disabled="disabled">
                                                    <option>Con fecha de vencimiento</option>
                                                    <option>Sin fecha de vencimiento</option>
                                                    <option>Pago único</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Número Cuota</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="01" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Vencimiento</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Fecha Vencimiento">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Fecha Real de Pago</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Fecha real de pago">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Tipo de Pago</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Completa</option>
                                                    <option>Fraccionada</option>                                                   
                                                </select>
                                            </div>
                                        </div>

                                    </form>
                                </div>

                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">                                                                                                               
                                        
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Forma de Pago</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Crédito</option>
                                                    <option>Tarjeta</option>                                                   
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Mora</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Mora">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Monto a cobrar</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Monto a cobrar">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Monto pagado</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Monto pagado">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">Saldo a favor</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" value="" placeholder="Saldo a favor">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">Comprobante de Pago</label>
                                            <div class="col-sm-9">
                                                <select class="form-control">
                                                    <option>Boleta</option>
                                                    <option>Factura</option>                                                   
                                                </select>
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
                                        <div class="col-md-12">
                                	<div class="col-md-6">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12">
                                            Registrar Pago
                                        </button>
                                     </div>
                                     <div class="col-md-6">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12 pull-right" disabled="disabled">
                                            Imprimir Comprobante de Pago
                                        </button>
                                      </div>
                              
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