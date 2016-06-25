<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
        <meta charset="utf-8">
		 <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ajout de pièce comptable</title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
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
					<form  method="post" id="newPieceForm" name="newPieceForm"> 
						<div class="card">
							<div class="card-body card-padding">
								
							
								<div class="form-group">
									<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
										<h2>N° de la pièce:</h2>
									</div>
									<div class="fg-line">
										<input type="text" name="numPiece" id="numPiece"class="form-control input-lg" placeholder="ex:00559T23F255YOE/2016" >
									</div>
								</div>
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Fournisseur:</h2>
								</div>
									
								<div class="form-group">
									<div class="fg-line">
										<div class="select">
											<select class="form-control"  id="tierSelection" name="tier">
												<option value="0">-- Selectionner un fournisseur--</option>
												<c:forEach items="${listTiers}" var="tier">
													<option value="${tier.id}">${tier.acronyme}-${tier.designation}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Montant:</h2>
								</div>
								<div class="dtp-container fg-line">
									<input type="text" class="form-control input-mask"  placeholder=""  name="montantPiece" id="montantPiece"/>
								</div>
								<div class="form-group">
									<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
										<h2>Objet:</h2>
									</div>
									<div class="fg-line">
										<input type="text" class="form-control input-lg" placeholder="ex:Facture éléctricité" name="objetPiece" id="objetPiece" >
									</div>
								</div>
								<div class="form-group">
									<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
										<h2>Observation:</h2>
									</div>
									<div class="fg-line" >
										<textarea  class="form-control" style="background:#EEE" rows="5" placeholder="Saisissez l'observation liéer a cette piéce comptable ...."></textarea>
									</div>
								</div>
								<br>
								<br>
								
								<div style="position: absolute;
										bottom: 16px;
										right: 16px;">
									<button class="btn btn-danger btn-lg waves-effect"><i class="zmdi zmdi-undo zmdi-hc-fw"></i>Annuler</button>
									<button class="btn bgm-teal btn-lg waves-effect" style="align" ><i class="zmdi zmdi-upload zmdi-hc-fw"></i>Upload du fichier</button>
									<button type="submit" class="btn bgm-green btn-lg waves-effect" style="align" id="sa-success"><i class="zmdi zmdi-mail-send zmdi-hc-fw" ></i>Valider</button>
								</div>
                                
                          
								
							
							
							</div>		
						</div>	
					</form>							
				</div>
					
				
			</section>

		</section>
		
		<!-- Javascript Libraries -->	
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
         <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>

        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		
        <script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>
		<!---new JS-->
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>  
		
       <script src="vendors/bootgrid/jquery.bootgrid.updated.min.js"></script>


		<script type="text/javascript">
		$("#newPieceForm").validate();

		$.validator.addMethod("valueNotEquals", function(value, element, arg){
	    	return arg != jQuery(element).find('option:selected').text();
	    	}
		);
	    
    	$("#numPiece").rules("add", {
        	required:true,
            messages:{
            	required:"Veuillez saisir un numéro de piece !"
            }
        });
    	
    	$("#tierSelection").rules("add", {
        	required:true,
        	valueNotEquals:"-- Selectionner un fournisseur--",
            messages:{
            	required:"Veuillez saisir un numéro de piece !",
            	valueNotEquals:"Veuillez choisir un fournisseur !"
            }
        });
    	
    	$("#montantPiece").rules("add", {
        	required:true,
        	valueNotEquals:"-- Selectionner un fournisseur--",
            messages:{
            	required:"Veuillez saisir un numéro de piece !",
            	valueNotEquals:"Veuillez choisir un fournisseur !"
            }
        });
    	
    	$("#objetPiece").rules("add", {
        	required:true,
            messages:{
            	required:"Veuillez saisir un numéro de piece !"
            }
        });
		</script>
        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>
		<script>function addRow() {
						
					var element= document.getElementById('tableAddGuide');
					var tr = document.createElement('tr');
					
					tr.innerHTML='<tr><td><div class="form-group"><div class="fg-line"><input type="text" class="form-control" placeholder="Numero de compte" vk_1fb3d="subscribed">'
						+'						</div>'
						+'					</div>'
						+'				</td>'
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<div class="select">'
						+'							<select class="form-control">'
						+'								<option>D/C</option>'
						+'								<option>D�bit</option>'
						+'								<option>Cr�dit</option>'
						+'							</select>'
						+'						</div>'
						+'					</div>'
						+'				</div>'
						
						+'				</td>'	
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<input type="text" class="form-control input-mask" data-mask="00,00%" placeholder="eg: 00,00%" maxlength="9" autocomplete="off" vk_129f4="subscribed">'
						+'					</div>'
					+'					</div>'
						+'				</td>'
						+'			</tr>';	
				
					
					element.appendChild(tr);
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


     

<!-- D?lloped by Juba Agoun on April 2016-->
</html>