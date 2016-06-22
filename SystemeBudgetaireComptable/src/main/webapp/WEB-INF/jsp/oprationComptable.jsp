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
					<form  method="post" id="opComptForm" name="opComptForm">
					
						<div class="card">
							<div class="card-body card-padding">
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Numéro de l'opération</h2>
								</div>
								<div class="dtp-container fg-line">
									<input type="text" class="form-control"  placeholder="Numero d'opération"  id ="numOperation" name="numOperation"/>
								</div>
								
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Journée comptable</h2>
								</div>
								<div class="dtp-container fg-line">
									<input type="date" class="form-control date-picker"  placeholder="Choisir une date"  id ="dateOperation" name="dateOperation"/>
								</div>
								
								
								
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Fournisseur:</h2>
								</div>
									
								<div class="form-group">
									<div class="fg-line">
										<div class="select">
											<select class="form-control"  id="tierSelection">
												<option value="0">-- Choisir un fournisseur --</option>
												<c:forEach items="${listTiers}" var="tier">
													<option value="${tier.id}">${tier.NIF}-${tier.NIS}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
										<h2>Piéce:</h2>
								</div>
									
								<div class="form-group">
									<div class="fg-line">
										<div class="select">
											<select class="form-control" name="pieceSelection" id="selectPiece">
												<option value="0">-- Choisir une piece --</option>
											</select>
										</div>
									</div>
								</div><br><br><br>
								
								<div class="btn-group btn-group-lg" role="group" style=" width:100%">
									<button type="button" style="width:33%" class="btn bgm-teal waves-effect"><i class="zmdi zmdi-account zmdi-hc-fw"></i>   Saisie Mannuelle </button>
									<button type="button" style="width:34%" class="btn bgm-pink waves-effect"><i class="zmdi zmdi-view-list-alt zmdi-hc-fw"></i>   A partir d'un guide</button>
									<button type="button" style="width:33%" class="btn bgm-green btn-lg waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i>   Creer un guide</button>
								</div>
							<div style="visibility: collapse;">
							<input type="text" id="nb_element" name="nb_element" >
							</div>
							</div>
								
						</div>	
						
						<div class="card">
							<div class="card-body card-padding">
							<div class="table-responsive" style="padding-bottom:16px">
								<table  class="table table-bordered">
									<thead>
								
										<tr>
											<th data-column-id="id" data-type="numeric">numero de compte</th>
											<th data-column-id="option">Debit/Crédit</th>
											<th data-column-id="sender">Montant</th>
										</tr>
									</thead>
									<tbody id="tableAddGuide">
										<tr>
											<td>
												<div class="form-group">
													<div class="fg-line">
														<input name ="idCompte0" type="text" class="form-control compte" placeholder="Numero de compte" >
														<div id='opComptForm_idCompte0_errorloc' class='error_strings'></div>
													</div>
												</div>
											</td>
											<td>
											<div class="form-group">
												<div class="fg-line">
													<div class="select">
														<select name="type0" class="form-control typecompte">
															<option>D/C</option>
															<option>Débit</option>
															<option>Crédit</option>
														</select>
													</div>
												</div>
											</div>
											
											</td>	
											<td>
											<div class="form-group">
												<div class="fg-line">
													<input name="montant0" type="text" class="form-control input-mask montant"  placeholder="eg: 300 000.00" maxlength="9" autocomplete="off" >
												</div>
											</div>
											</td>
										</tr>
									
									</tbody>
								</table>

								
								</div>
								<div>
									<ul class="f-menu" style="display:inline; list-style-type: none;">
									<li style="background-color: #333;">
										<div style="position: absolute;bottom: 16px;left: 35px;">
											<button type="button" style=" " class="btn bgm-lightblue btn-icon waves-effect waves-circle waves-float" onclick="addRow();"><i class="zmdi zmdi-plus zmdi-hc-fw"></i></button>
										</div>
									</li>
									<li>
										<p style="position: absolute;
												bottom: 7px;
												left: 80px;">Ajout un compte</p>
									</li>	
									</ul>
								</div>
									<div style="position: absolute;
											bottom: 16px;
											right: 16px;">
										<button class="btn btn-danger btn-lg waves-effect"><i class="zmdi zmdi-undo zmdi-hc-fw"></i>Annuler</button>
										<button class="btn bgm-green btn-lg waves-effect"  type="submit"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
									</div>
							</div>	
						</div>
						
					</form>
				</div>
					
				
			</section>

		</section>
		



        
        <!-- Script de validation -->
        <script type="text/javascript">
	    	$("#opComptForm").validate();
	    	//Méthodes de validation	    	
	    	$.validator.addMethod("valueNotEquals", function(value, element, arg){
	    		return arg != jQuery(element).find('option:selected').text();
	   		}, "Value must not equal arg!");
	    	$.validator.addMethod("numOpExists", function(value, element, arg){
	    		var result2;
	    		$.ajaxSetup({async: false});
				$.getJSON(	'${home}numOpExists.json'+'?num='+value,
							{ajax : 'true'}, 
							function(data){
								
								result2=data;
							}
						);
				$.ajaxSetup({async: true});
	    			return !result2;
	   		}, "Une opération avec le même numéro existe déja !");
	    	$.validator.addMethod("compteNumExists", function(value, element, arg){
	    		var result;
	    		$.ajaxSetup({async: false});
				$.getJSON(	'${home}compteExists.json'+'?num='+value,
							{ajax : 'true'}, 
							function(data){
							result=data;
							});
				$.ajaxSetup({async: true});
	    		return result;
	   		}, "Compte n'existe pas!");
	    	

	    	
	    	//Ajout des règles
	    	$("#numOperation").rules("add", {
	        	required:true,
	        	numOpExists:true,
	            messages:{
	            	required:"Veuillez entrer le numéro d'opération !",
	            	numOpExists:"Une opéraition portant le même numéro existe déjà!"
	            }
	        });
	        $("#dateOperation").rules("add", {
	            required: true,
	            messages:{
	            	required:"Veuillez indiquer une date pour l'opération !"	
	            }
	        	});
	    	
	        $("#tierSelection").rules("add", {
	            valueNotEquals: "-- Choisir un fournisseur --",
	            messages:{
	            	valueNotEquals:"Veuillez choisir un fournisseur !"	
	            }
	        	});
	        $("#selectPiece").rules("add", {
	        	valueNotEquals: "-- Choisir une piece --",
	            messages:{
	            	valueNotEquals:"Veuillez choisir une piece !"	
	            }
	        	});

		function addValidationRules(){
		    $('.compte').each(function () { 
		        $(this).rules("add", {
		            required: true,
		            minlength:12,
		            maxlength:12,
		            compteNumExists:true,
		            messages:{
		            	required:"Veuillez indiquer un numéro de compte !",
			            minlength:"Le numéro de compte doit être sur 12 positions!",
			            maxlength:"Le numéro de compte doit être sur 12 positions!",
			            compteNumExists:"Le compte n'existe pas!"
		            }
		        });
		    });
		    $('.montant').each(function () { 
		        $(this).rules("add", {
		        	required: true,
		            number:true,
		            messages:{
		            	required:"Vous devez indiquer un montant !",
		            	number:"La valeur saisie doit être un chiffre valide !"
		            }
		        });
		    });
		    $('.typecompte').each(function () { 
		        $(this).rules("add", {
		            valueNotEquals: "D/C",
		            messages:{
		            	valueNotEquals:"Veuillez indiquer un type !"
		            }
		        });
		    });
		}
		addValidationRules();

		function addRow() {
					var element= document.getElementById('tableAddGuide');
					var tr = document.createElement('tr');
					var row = element.rows.length;
					document.getElementById('nb_element').value=row + 1;
					tr.innerHTML='<tr><td><div class="form-group"><div class="fg-line"><input  type="text" name="idCompte'+row+'" class="form-control compte" placeholder="Numero de compte" vk_1fb3d="subscribed">'
						+'						</div>'
						+'					</div>'
						+'				</td>'
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<div class="select">'
						+'							<select class="form-control typecompte" name="type'+row+'">'
						+'								<option>D/C</option>'
						+'								<option>Débit</option>'
						+'								<option>Crédit</option>'
						+'							</select>'
						+'						</div>'
						+'					</div>'
						+'				</div>'
						
						+'				</td>'	
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<input  type="text"'
						+'name="montant'+row+'"'
						+'class="form-control input-mask montant" data-mask="00,00%" placeholder="eg: 00,00%" maxlength="9" autocomplete="off" vk_129f4="subscribed">'
						+'					</div>'
						+'				</div>'
						+'				</td>'
						+'			</tr>';	
				
					
					element.appendChild(tr);
					addValidationRules();

				}
		</script>
		
        <!-- Scripts de la page -->
		<script type="text/javascript">
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
                swal("Opération ajouté au broulliard !", "L'opération comptable est crée avec succès!", "success")
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
		<!-- Récupération des listes -->
		<script type="text/javascript">
			var selectElement = document.getElementById("tierSelection");
			selectElement.onchange = function (){
				var tierId = document.getElementById("tierSelection").value;
				if(tierId!=0){
					$.getJSON(	'${home}findPieces.json'+'?tierId='+tierId+"&engaId="+0,
								{ajax : 'true'}, 
								function(data){
									var html = '<option value="0">-- Choisir une piece --</option>';
									var len = data.length;
									for (var i = 0; i < len; i++) {
										html += '<option value="' + data[i].id + '">'
												+ data[i].id +'</option>';
									}
									html += '</option>';
									
									$('#selectPiece').html(html);
								}
								).done(function() {
						console.log( "apres success" );
					  })
					  .fail(function() {
						console.log( "error" );
					  })
					  .always(function() {
						console.log( "complete toujours succes ou erreur" );
					  });
				}
				
			}
		</script>
    
	</body>
</html>