<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link href="css/material-design-iconic-font.css" rel="stylesheet">
	    <link href="css/bootstrap.min.css" rel="stylesheet">
	    <link href="css/bootstrap-select.css" rel="stylesheet">
	    <link href="css/animate.min.css" rel="stylesheet">
	    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
	    <link href="css/sweetalert2.css" rel="stylesheet">
	    <link href="css/jquery.bootgrid.min.css" rel="stylesheet">
	    <link href="css/app.min.1.css" rel="stylesheet">
	    <link href="css/app.min.2.css" rel="stylesheet">
        <title></title>

       	<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-growl.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-select.js"></script>
		<script type="text/javascript" src="js/waves.min.js"></script>
		<script type="text/javascript" src="js/typeahead.bundle.js"></script>
		<script type="text/javascript" src="js/sweetalert2.min.js"></script>
		<!--Bibliotheque pour le sidebar -->
		<script type="text/javascript" src="js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
		<script type="text/javascript" src="js/jquery.bootgrid.updated.min.js"></script>
		<script type="text/javascript" src="js/functions.js"></script>
		<!-- Validation du formulaire -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.js" type="text/javascript"></script>
    </head>
<body>
		<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
		<c:import url="./header.jsp"></c:import>
        <!--Le sidebar/navigation drawer (android) -->
		<c:import url="./sidebar.jsp"></c:import>
		
		<section id="main">			
			<section id="content">
				<div class="container">
						<div class="card">
							<div class="card-body card-padding">
									<div style="width: 100%;" >
										
										<div class="card list-sections">
										    <!--L'entete de la page' -->
										    <div class="card-header">
										        <h2>Brouillard
										            <small>Opérations comptables non valider.</small>
										        </h2>
										    </div>
										    <div class="card-contenu">
										        <div class="m-sm-10 ">
										            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter une Nouvelle section</button>
										        </div>

									        <!--Le tableau qui affiche la liste des comptes -->
									        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
									            <!--l'entete du tableau' -->
									            <thead>
									            <tr>
									                <th style="" class="text-left" data-column-id="id">Code Structure</th>
									                <th data-column-id="CompteLabel" class="text-left" style="">Nom</th>
									                <th data-column-id="CompteLabel" class="text-left" style="">Addresse</th>
									                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
									            </tr>
									            </thead>
									
									            <!--Les lignes du tableau -->
									            <tbody>
									            <c:if test="${listOperations.size() >0}">
									                <c:forEach begin="0" end="${listOperations}" varStatus="operation">
									                    <tr data-row-id="${operation.id}" class="147">
									                        <td class="text-left" style="">${operation.dateOperation }</td>
									                        <td class="text-left" style="">${operation.numOperation }</td>
									                        <td class="text-left" style="">${operation.pieceComptable.montantGlobal}</td>
									                        <td class="text-left" style="">${operation.pieceComptable }</td>
									                    </tr>
									
									                </c:forEach>
									            </c:if>
									
									            </tbody>
									        </table>
									        </div>
									        </div>
									        
									        <br>
								<br>
								<div style="position: absolute;bottom: 16px;right: 16px;">
									<button class="btn bgm-gray btn-primary waves-effect" ><i class="zmdi zmdi-edit zmdi-hc-fw"></i>Modifier la selection</button>
									<button class="btn btn-danger btn-primary waves-effect"><i class="zmdi zmdi-close zmdi-hc-fw"></i>Spprimer la selection</button>
									<button class="btn bgm-green btn-primary waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i> Consulter la selection</button>
								</div>			
						</div>
									</div>		
						</div>	
												
				</div>
					
				
			</section>

		</section>

        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>
        <!-- Data Table -->
		<script type="text/javascript">
            /*
             * Notifications
             */
            function notify(from, align, icon, type, animIn, animOut){
                $.growl({
                    icon: icon,
                    title: ' Bootstrap Growl ',
                    message: 'Turning standard Bootstrap alerts into awesome notifications',
                    url: ''
                },{
                        element: 'body',
                        type: type,
                        allow_dismiss: true,
                        placement: {
                                from: from,
                                align: align
                        },
                        offset: {
                            x: 20,
                            y: 85
                        },
                        spacing: 10,
                        z_index: 1031,
                        delay: 2500,
                        timer: 1000,
                        url_target: '_blank',
                        mouse_over: false,
                        animate: {
                                enter: animIn,
                                exit: animOut
                        },
                        icon_type: 'class',
                        template: '<div data-growl="container" class="alert" role="alert">' +
                                        '<button type="button" class="close" data-growl="dismiss">' +
                                            '<span aria-hidden="true">&times;</span>' +
                                            '<span class="sr-only">Close</span>' +
                                        '</button>' +
                                        '<span data-growl="icon"></span>' +
                                        '<span data-growl="title"></span>' +
                                        '<span data-growl="message"></span>' +
                                        '<a href="#" data-growl="url"></a>' +
                                    '</div>'
                });
            };
            
            $('.notifications > div > .btn').click(function(e){
                e.preventDefault();
                var nFrom = $(this).attr('data-from');
                var nAlign = $(this).attr('data-align');
                var nIcons = $(this).attr('data-icon');
                var nType = $(this).attr('data-type');
                var nAnimIn = $(this).attr('data-animation-in');
                var nAnimOut = $(this).attr('data-animation-out');
                
                notify(nFrom, nAlign, nIcons, nType, nAnimIn, nAnimOut);
            });


            /*
             * Dialogs
             */

            //Basic
            $('#sa-basic').click(function(){
                swal("Here's a message!");
            });

            //A title with a text under
            $('#sa-title').click(function(){
                swal("Here's a message!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat, tincidunt vitae ipsum et, pellentesque maximus enim. Mauris eleifend ex semper, lobortis purus sed, pharetra felis")
            });

            //Success Message
            $('#sa-success').click(function(){
                swal("L'ajout s'est bien effectuer !", "L'opération d'ajout de la pièce comptable s'est bien effectué ", "success")
            });

            //Warning Message
            $('#sa-warning').click(function(){
                swal({   
                    title: "Are you sure?",   
                    text: "You will not be able to recover this imaginary file!",   
                    type: "warning",   
                    showCancelButton: true,   
                    confirmButtonColor: "#DD6B55",   
                    confirmButtonText: "Yes, delete it!",   
                    closeOnConfirm: false 
                }, function(){   
                    swal("Deleted!", "Your imaginary file has been deleted.", "success"); 
                });
            });
            
            //Parameter
            $('#sa-params').click(function(){
                swal({   
                    title: "Are you sure?",   
                    text: "You will not be able to recover this imaginary file!",   
                    type: "warning",   
                    showCancelButton: true,   
                    confirmButtonColor: "#DD6B55",   
                    confirmButtonText: "Yes, delete it!",   
                    cancelButtonText: "No, cancel plx!",   
                    closeOnConfirm: false,   
                    closeOnCancel: false 
                }, function(isConfirm){   
                    if (isConfirm) {     
                        swal("Deleted!", "Your imaginary file has been deleted.", "success");   
                    } else {     
                        swal("Cancelled", "Your imaginary file is safe :)", "error");   
                    } 
                });
            });

            //Custom Image
            $('#sa-image').click(function(){
                swal({   
                    title: "Sweet!",   
                    text: "Here's a custom image.",   
                    imageUrl: "img/thumbs-up.png" 
                });
            });

            //Auto Close Timer
            $('#sa-close').click(function(){
                 swal({   
                    title: "Auto close alert!",   
                    text: "I will close in 2 seconds.",   
                    timer: 2000,   
                    showConfirmButton: false 
                });
            });

        </script>
</body>
</html>