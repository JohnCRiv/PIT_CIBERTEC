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
                            <h2 class="" style="padding: 5px 20px 30px 20px;">Generar Obligaciones de Pagos</h2>
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <form class="form-horizontal" role="form">
                               
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Socio</label>
                                            <div class="col-md-7">
                                                <input type="text" class="form-control" value="" placeholder="SOC-00001" disabled="disabled">
                                            </div>
                                            <div class="col-md-3">
                                                <input type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-buscar-socio" value="Buscar">
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
                                	<div class="col-md-6">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12">
                                            Generar Obligación de Pagos
                                        </button>
                                     </div>
                                     <div class="col-md-6">
                                        <button type="submit" class="btn btn-default waves-effect waves-light btn-md col-md-12 pull-right" disabled="disabled">
                                            Imprimir Cronograma
                                        </button>
                                      </div>
                              
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- MODAL BUSCAR SOCIO -->
                <div id="modal-buscar-socio" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog" style="width:55%">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title">Buscar Socio</h4>
                                        </div>
                                        <div class="modal-body">
                                        	<div class="row">
                                        		<label>Nombres Completos</label>
                                        		<input type="text" placeholder="Socio" >
                                        		<button class="btn btn-default" >Buscar</button>
                                        	</div>
                                            <div class="p-20">
		                                        <table class="table table-striped" id="datatable-editable">
					                                <thead>
					                                    <tr>
					                                        <th>Cód. Socio</th>
					                                        <th>Nombres Completos</th>
					                                        <th>Tipo Documento</th>
					                                        <th>Núm. Documento</th>
					                                        <th>Seleccionar</th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                    <tr class="gradeX">
					                                        <td>SOC-00001</td>
					                                        <td>Jhon Angel Cruzado Rivera
					                                        </td>
					                                        <td>D.N.I</td>
					                                        <td>70311608</td>
					                                        <td class="actions">
					                                            <a href="#" class="on-default edit-row"><i class="fa fa-check"></i></a>
					                                        </td>
					                                    </tr>
					                                    <tr class="gradeC">
					                                        <td>SOC-00002</td>
					                                        <td>Oscar Nicolas Hidalgo Correa
					                                        </td>
					                                        <td>D.N.I</td>
					                                        <td>83973742</td>
					                                        <td class="actions">
					                                            <a href="#" class="on-default edit-row"><i class="fa fa-check"></i></a>
					                                        </td>
					                                    </tr>
					                                    <tr class="gradeC">
					                                        <td>SOC-00003</td>
					                                        <td>Alfredo Kevin Candia Villagómez
					                                        </td>
					                                        <td>D.N.I</td>
					                                        <td>82746251</td>
					                                        <td class="actions">
					                                            <a href="#" class="on-default edit-row"><i class="fa fa-check"></i></a>
					                                        </td>
					                                    </tr>
					                                    <tr class="gradeC">
					                                        <td>SOC-00004</td>
					                                        <td>Charles Flores Carrasco
					                                        </td>
					                                        <td>D.N.I</td>
					                                        <td>52048277</td>
					                                        <td class="actions">
					                                            <a href="#" class="on-default edit-row"><i class="fa fa-check"></i></a>
					                                        </td>
					                                    </tr>
					                                    <tr class="gradeC">
					                                        <td>SOC-00005</td>
					                                        <td>Manuel Olórtegui Abanto
					                                        </td>
					                                        <td>D.N.I</td>
					                                        <td>76254098</td>
					                                        <td class="actions">
					                                            <a href="#" class="on-default edit-row"><i class="fa fa-check"></i></a>
					                                        </td>
					                                    </tr>
					                                </tbody>
		                            			</table>
                                    		</div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cerrar</button>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.modal -->
                


                


                <s:include value="../../../comun/footer.jsp" />

            </div>
        </div>

		<s:include value="../../../comun/scripts-include.jsp" />

    </body>
</html>