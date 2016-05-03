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
		<s:include value="../../../comun/menu_administrador.jsp" />
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
                            <button type="button" class="btn btn-default">Nuevo Socio <span class="m-l-5"><i class="fa fa-user"></i></span></button>
                        </div>
                        <h4 class="page-title">Socios</h4>
                        <ol class="breadcrumb">
                            
                        </ol>

                    </div>
                </div>
                <!-- Page-Title -->



                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b>Socios de Pandero</b></h4>
                            <div class="row">
                                <div class="p-20">
                                        <table class="table table-striped" id="datatable-editable">
			                                <thead>
			                                    <tr>
			                                        <th>Cód. Socio</th>
			                                        <th>Nombres Completos</th>
			                                        <th>Tipo Documento</th>
			                                        <th>Núm. Documento</th>
			                                        <th></th>
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
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>SOC-00002</td>
			                                        <td>Oscar Nicolas Hidalgo Correa
			                                        </td>
			                                        <td>D.N.I</td>
			                                        <td>83973742</td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>SOC-00003</td>
			                                        <td>Alfredo Kevin Candia Villagómez
			                                        </td>
			                                        <td>D.N.I</td>
			                                        <td>82746251</td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>SOC-00004</td>
			                                        <td>Charles Flores Carrasco
			                                        </td>
			                                        <td>D.N.I</td>
			                                        <td>52048277</td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
			                                        </td>
			                                    </tr>
			                                    <tr class="gradeC">
			                                        <td>SOC-00005</td>
			                                        <td>Manuel Olórtegui Abanto
			                                        </td>
			                                        <td>D.N.I</td>
			                                        <td>76254098</td>
			                                        <td class="actions">
			                                            <a href="#" class="on-default edit-row"><i class="fa fa-pencil"></i></a>
			                                            <a href="#" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
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