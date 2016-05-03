<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
    	<title>Socios</title>
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
                <div class="row">
                    <div class="col-sm-12">
                        <div class="btn-group pull-right m-t-15">
                            <button type="button" class="btn btn-default">Generar Obligacion<span class="m-l-5"><i class="fa fa-calendar-times-o"></i></span></button>
                        </div>
                        <h4 class="page-title">Lista de Obligaciones</h4>
                        <ol class="breadcrumb">
                            
                        </ol>

                    </div>
                </div>
                <!-- Page-Title -->



                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b>Obligaciones de Pago</b></h4>
                            <div class="row">
                                <div class="p-20">
                                        <table class="table table-striped" id="datatable-editable">
			                                <thead>
			                                    <tr>
			                                        <th>Cód. Obligacion</th>
			                                        <th>Socio</th>
			                                        <th>Fecha de Emisión</th>
			                                        <th>Estado</th>
			                                        <th></th>
			                                    </tr>
			                                </thead>
			                                <tbody>
			                                    <tr class="gradeX">
			                                        <td>OBL-00001</td>
			                                        <td>Jhon Angel Cruzado Rivera
			                                        </td>
			                                        <td>10/04/2016</td>
			                                        <td><span class="lable lable-table lable-success">Activo</span></td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>OBL-00002</td>
			                                        <td>Oscar Nicolas Hidalgo Correa
			                                        </td>
			                                        <td>02/02/2016</td>
			                                        <td><span class="lable lable-table lable-success">Activo</span></td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>OBL-00003</td>
			                                        <td>Alfredo Kevin Candia Villagómez
			                                        </td>
			                                        <td>18/04/2016</td>
			                                        <td><span class="lable lable-table lable-success">Activo</span></td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>OBL-00004</td>
			                                        <td>Charles Flores Carrasco
			                                        </td>
			                                        <td>09/05/2015</td>
			                                        <td><span class="lable lable-table lable-success">Activo</span></td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-ban"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>OBL-00005</td>
			                                        <td>Manuel Olórtegui Abanto
			                                        </td>
			                                        <td>24/01/2016</td>
			                                        <td><span class="lable lable-table lable-success">Activo</span></td>
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

                <s:include value="../../../comun/footer.jsp" />

            </div>
        </div>

		<s:include value="../../../comun/scripts-include.jsp" />

    </body>
</html>