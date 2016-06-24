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
						<div class="card-header">
							<h2>
								Brouillard<small>Opérations comptables non valider.</small>
							</h2>
						</div>
						<div class="card-body card-padding">
									<div style="width: 100%;" >
										<div style="display:inline; margin:10px; width: 301px; padding:10px; position: absolute;top:16px;right:4px;">
											<input type="text" class="search-field form-control" placeholder="Search" style="display:inline;     width: 86%;">
											<button class="btn btn-info waves-effect"><i class="zmdi zmdi-search"></i></button>
										</div>
										<table  class="table table-bordered" style="margin-top: 65px;">
											<thead>
												<tr>
													<th data-column-id="selct">
														<label class="checkbox checkbox-inline m-r-20">
															Séléction
														</label>
													</th>
													<th data-column-id="id" data-type="numeric">Numéro de l'opération</th>
													<th data-column-id="date" >Journée comptable</th>
													<th data-column-id="idPiece">Piece corréspondante</th>
													<th data-column-id="montant">Montant global</th>

												</tr>
										</thead>
										<tbody id="tableAddGuide">
											<c:forEach items="${listOperations}" var="operation" varStatus="status">
												<tr id="${operation.id}">
													<td>
														<label class="radio radio-inline m-r-20">
															<input type="radio" value="${operation.id}" id="radio${status.index} }" name="radios">
															<i class="input-helper"></i>
														</label>
													</td>
													<td>${operation.numOperation }</td>
													<td>${operation.dateOperation }</td>		
													<td>${operation.pieceComptable.objet}</td>
													<td>${operation.pieceComptable.montantGlobal }</td>
												</tr>
											</c:forEach>
										</tbody>
								</table>
								<br/>
								<br/>
								<br/>
								<br/>
								<div style="position: absolute;bottom: 16px;right: 16px;">
									<button class="btn bgm-gray btn-primary waves-effect" ><i class="zmdi zmdi-edit zmdi-hc-fw"></i>Consulter les écritures</button>
									<button class="btn btn-danger btn-primary waves-effect" onclick="supprimerOperation()"><i class="zmdi zmdi-close zmdi-hc-fw" ></i>Supprimer l'opération</button>
									<button class="btn bgm-green btn-primary waves-effect" onclick="validerOperation()"><i class="zmdi zmdi-plus zmdi-hc-fw" ></i> Valider l'opération</button>
								</div>			
						</div>
									</div>		
						</div>	
												
				</div>
					
				
			</section>

		</section>

        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>
        <!-- Script de selection -->
        <script type="text/javascript">
        $('input').on('change', function() {
        	   $('input[name=radios]:checked').val(); 
        });
        </script>
        <!-- Scripts des fonctions -->
        <script>
        function supprimerOperation(){
        	var idOp = $('input[name=radios]:checked').val();
        	//Ajax
        	var result;
    		$.ajaxSetup({async: false});
			$.getJSON(	'${home}deleteOpComptById.json'+'?opId='+idOp,
						{ajax : 'true'}, 
						function(data){
							result=data;
						}
					);
			$.ajaxSetup({async: true});
			alert(result);
    		if(result)  $('table tr#'+idOp).remove();
        }
        function validerOperation(){
        	var idOp = $('input[name=radios]:checked').val();
        	//Ajax
        	var result;
    		$.ajaxSetup({async: false});
			$.getJSON(	'${home}validateOpComptById.json'+'?opId='+idOp,
						{ajax : 'true'}, 
						function(data){
							result=data;
						}
					);
			$.ajaxSetup({async: true});
			alert(result);
    		if(result)  $('table tr#'+idOp).remove();
        }
        </script>
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