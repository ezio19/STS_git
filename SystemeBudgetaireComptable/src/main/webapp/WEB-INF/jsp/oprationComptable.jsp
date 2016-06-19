<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
    <!--[if IE 9 ]>
	<html class="ie9"><![endif]-->
    
<!--powered by ESI IFA Project 2016 -->
<head>
        <meta charset="utf-8">
		 <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Opération Comptable</title>
        
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
        <script src="js/operation-form.js"type="text/javascript"></script>
    </head>
<body>
        <header id="header" class="clearfix" data-current-skin="blue">
		
			<ul class="header-inner">
                <li id="menu-trigger" data-trigger="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>

                <li class="logo hidden-xs">
                    <a href="index-2.html">Opération comptable</a>
                </li>
				 <!-- Top Search Content -->
            <div id="top-search-wrap">
                <div class="tsw-inner">
                    <i id="top-search-close" class="zmdi zmdi-arrow-left"></i>
                    <input type="text">
                </div>
            </div>
			</ul>
        </header>
		<section id="main">
			
            <aside id="sidebar" class="sidebar c-overflow">
                <div class="profile-menu">
                    <a href="#">
                        <div class="profile-pic">
                            <img src="img/profile-pics/1.jpg" alt="">
                        </div>

                        <div class="profile-info">
                            Malinda Hollaway

                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                    </a>

                    <ul class="main-menu">
                        <li>
                            <a href="profile-about.html"><i class="zmdi zmdi-account"></i> View Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-settings"></i> Settings</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                        </li>
                    </ul>
                </div>

                <ul class="main-menu">
                    <li><a href="index-2.html"><i class="zmdi zmdi-home"></i> Home</a></li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Headers</a>

                        <ul>
                            <li><a href="textual-menu.html">Textual menu</a></li>
                            <li><a href="image-logo.html">Image logo</a></li>
                            <li><a href="top-mainmenu.html">Mainmenu on top</a></li>
                        </ul>
                    </li>
                    <li><a href="typography.html"><i class="zmdi zmdi-format-underlined"></i> Typography</a></li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-widgets"></i> Widgets</a>

                        <ul>
                            <li><a href="widget-templates.html">Templates</a></li>
                            <li><a href="widgets.html">Widgets</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-list"></i> Tables</a>

                        <ul>
                            <li><a href="tables.html">Normal Tables</a></li>
                            <li><a href="data-tables.html">Data Tables</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu active toggled">
                        <a href="#"><i class="zmdi zmdi-collection-text"></i> Forms</a>

                        <ul>
                            <li><a href="form-elements.html">Basic Form Elements</a></li>
                            <li><a href="form-components.html">Form Components</a></li>
                            <li><a href="form-examples.html">Form Examples</a></li>
                            <li><a href="form-validations.html">Form Validation</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-swap-alt"></i>User Interface</a>
                        <ul>
                            <li><a href="colors.html">Colors</a></li>
                            <li><a href="animations.html">Animations</a></li>
                            <li><a href="box-shadow.html">Box Shadow</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                            <li><a href="icons.html">Icons</a></li>
                            <li><a href="alerts.html">Alerts</a></li>
                            <li><a href="preloaders.html">Preloaders</a></li>
                            <li><a href="notification-dialog.html">Notifications & Dialogs</a></li>
                            <li><a href="media.html">Media</a></li>
                            <li><a href="components.html">Components</a></li>
                            <li><a href="other-components.html">Others</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-trending-up"></i>Charts</a>
                        <ul>
                            <li><a href="flot-charts.html">Flot Charts</a></li>
                            <li><a href="other-charts.html">Other Charts</a></li>
                        </ul>
                    </li>
                    <li><a href="calendar.html"><i class="zmdi zmdi-calendar"></i> Calendar</a></li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-image"></i>Photo Gallery</a>
                        <ul>
                            <li><a href="photos.html">Default</a></li>
                            <li><a href="photo-timeline.html">Timeline</a></li>
                        </ul>
                    </li>

                    <li><a href="generic-classes.html"><i class="zmdi zmdi-layers"></i> Generic Classes</a></li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-collection-item"></i> Sample Pages</a>
                        <ul>

                            <li><a href="profile-about.html">Profile</a></li>
                            <li><a href="list-view.html">List View</a></li>
                            <li><a href="messages.html">Messages</a></li>
                            <li><a href="pricing-table.html">Pricing Table</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="wall.html">Wall</a></li>
                            <li><a href="invoice.html">Invoice</a></li>
                            <li><a href="login.html">Login and Sign Up</a></li>
                            <li><a href="lockscreen.html">Lockscreen</a></li>
                            <li><a href="404.html">Error 404</a></li>

                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="form-examples.html"><i class="zmdi zmdi-menu"></i> 3 Level Menu</a>

                        <ul>
                            <li><a href="form-elements.html">Level 2 link</a></li>
                            <li><a href="form-components.html">Another level 2 Link</a></li>
                            <li class="sub-menu">
                                <a href="form-examples.html">I have children too</a>

                                <ul>
                                    <li><a href="#">Level 3 link</a></li>
                                    <li><a href="#">Another Level 3 link</a></li>
                                    <li><a href="#">Third one</a></li>
                                </ul>
                            </li>
                            <li><a href="form-validations.html">One more 2</a></li>
                        </ul>
                    </li>
                </ul>
            </aside>
			
			<section id="content">
				<div class="container">
					<form  method="post" id="opComptForm" name="opComptForm">
					
						<div class="card">
							<div id='opComptForm_errorloc' class='error_strings'></div>
							<div class="card-body card-padding">
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Journée comptable</h2>
								</div>
								<div class="dtp-container fg-line">
									<input type="date" class="form-control date-picker date"  placeholder="Choose a date"  id ="dateOperation" name="dateOperation"/>
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
								</div>
								<br>
								<br>
								<br>
								<div class="btn-group btn-group-lg" role="group" style=" width:100%">
									<button type="button" style="width:33%" class="btn bgm-teal waves-effect"><i class="zmdi zmdi-account zmdi-hc-fw"></i>   Saisie Mannuelle </button>
									<button type="button" style="width:34%" class="btn bgm-pink waves-effect"><i class="zmdi zmdi-view-list-alt zmdi-hc-fw"></i>   A partir d'un guide</button>
									<button type="button" style="width:33%" class="btn bgm-green btn-lg waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i>   Creer un guide</button>
								</div>
							<div style="visibility: collapse;">
							<input type="text" id="nb_element" name="nb_element">1</input> 
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
											<!--<th data-column-id="received" data-order="desc">Received</th>
											<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>-->
										</tr>
									</thead>
									<tbody id="tableAddGuide">
										<tr>
											<td>
												<div class="form-group">
													<div class="fg-line">
														<input name ="idCompte0" type="text" class="form-control compte" placeholder="Numero de compte" vk_1fb3d="subscribed"">
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
													<input name="montant0" type="text" class="form-control input-mask montant"  placeholder="eg: 300 000.00" maxlength="9" autocomplete="off" vk_129f4="subscribed">
												</div>
											</div>
											</td>
										</tr>
									
									</tbody>
								</table>
								</br>
								
								</div>
								<div>
									<ul class="f-menu" style="display:inline; list-style-type: none;">
									<li style="background-color: #333;">
										<div style="position: absolute;
												bottom: 16px;
												left: 35px;">
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
										<button class="btn bgm-green btn-lg waves-effect" style="align" type="submit"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
									</div>
							</div>	
						</div>
						
					</form>
					<script type="text/javascript">
						
					</script>
				</div>
					
				
			</section>

		</section>
		
		<footer id="footer">
			Copyright &copy; 2016 IFA-ESI
			
			<ul class="f-menu">
				<li><a href="#">Home</a></li>
				<li><a href="#">Rac1</a></li>
				<li><a href="#">RAc2</a></li>
				<li><a href="#">RAc3</a></li>
				<li><a href="#">rac4</a></li>
			</ul>
		</footer>
		
		
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
                <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		
        <script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>

        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
      <!--   <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script> -->
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>  
		
       <script src="vendors/bootgrid/jquery.bootgrid.updated.min.js"></script>
        
        
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->

        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>
        <script>

	    	$("#opComptForm").validate();
	    	
	    	//Méthodes de validation
	    	$.validator.addMethod("valueNotEquals", function(value, element, arg){
	    		return arg != jQuery(element).find('option:selected').text();;
	   		}, "Value must not equal arg.");
	    	
	    	$.validator.addMethod("compteNumExists", function(value, element, arg){
	    		var result;
	    		$.ajaxSetup({async: false});
				$.getJSON(	'${home}compteExists.json'+'?num='+value,
							{ajax : 'true'}, 
							function(data){result=data;}
						);
				$.ajaxSetup({async: true});
	    			return result;
	   			}, "Compte n'existe pas.");
	    	
	    	//Ajout des règles
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
    
<script>
var selectElement = document.getElementById("tierSelection");
selectElement.onchange = function (){
	var tierId = document.getElementById("tierSelection").value;
	if(tierId!=0){
		$.getJSON(	'${home}findPieces.json'+'?tierId='+tierId,
					{ajax : 'true'}, 
					function(data){
						var html = '<option value="">Selectionner une pièce</option>';
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
<script type="text/javascript">


</script>
    
</body>


     

<!-- D?lloped by Juba Agoun on April 2016 and modified by Amine Aouffen on Mai 2016-->
</html>