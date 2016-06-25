<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Opération Budgétaire</title>
        
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



		<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
		<c:import url="./header.jsp"></c:import>
        <!--Le sidebar/navigation drawer (android) -->
		<c:import url="./sidebar.jsp"></c:import>
		
		<section id="main">
			<section id="content">
				<div class="container">
				
						<div id="divDialog" style="visibility:hidden">
								<div class="sweet-overlay" tabindex="-1" style="opacity: 1.24; display: block;"></div>
								<!----    shadow dialog---->
								<div class="sweet-alert showSweetAlert visible" tabindex="-1" data-has-cancel-button="false" data-has-confirm-button="true" data-allow-ouside-click="false" data-has-done-function="false" data-timer="null" style="display: block; width: 756px;margin-top: -167px;left: 40%;top: 50%;">
									<h2>Table des guides</h2>
									<table  class="table table-bordered" style="margin-top: 65px;">
										<thead>
									
											<tr>
												<th data-column-id="selct">
													<label>													
																												
																	N°
																	
																</label>
												</th>
												<th data-column-id="id" data-type="numeric">Nom du guide</th>
												<th data-column-id="typGuide">Type du guide</th>
												<th data-column-id="option">Déscription</th>
												<th data-column-id="sender">Date de création</th>
												
												<!--<th data-column-id="received" data-order="desc">Received</th>
												<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>-->
											</tr>
										</thead>
										<tbody >
								        <c:forEach items="${guides}" var="gui">
	                           			 <tr>
					                            <td><input class="typecheckbox" type="checkbox" value="${gui.id}"></td>
					                            <td id="nom_guide" class="text-left" style="">${gui.nom_guide}</td>
					                            <td id="type_facture" class="text-left" style="">${gui.type_facture}</td>
					                            <td id="descriptionguide" class="text-left" style="">${gui.descriptionguide}</td>
					                            <td id="date" class="text-left" style=""> ${gui.date}</td>
													 
	                       				 </tr>
	
	  
	                   				  </c:forEach>
										</tbody>
									</table>
															
									<p>
										<button class="cancel btn btn-lg btn-default" tabindex="2" style="display: inline-block;" onclick="unShowGuides();">Annuler</button> 
										<button class="confirm btn btn-lg btn-primary checkedok" tabindex="1" style="display: inline-block;" onclick="checked();">OK</button>
									</p>
								</div>
							</div>
							
					<form method="post" name="opBudgForm" id="opBudgForm">
					
					     <input type="text" name="typeop" id="typeop" style="visibility: hidden"> </input>
					     <input type="text" name="idguideselected" id="idguideselected"  style="visibility: hidden"> </input>
					     
						<div class="card">
							
							<div class="card-body card-padding">
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Code de l'opération</h2>
								</div>
								<div class="dtp-container fg-line">
									<input type="text" class="form-control"  placeholder="Numero d'opération"  id ="numOperation" name="numOperation"/>
								</div>
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Journée comptable</h2>
								</div>
								<div class="form-group fg-line">
									<input name="dateOperation" readonly="true" value="${date}" id="dateOperation" type="text" class="form-control date-picker" data-mask="00/00/0000" placeholder="eg: 23/05/2014" maxlength="10" autocomplete="off">
								</div>
								
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Engagement:</h2>
								</div>
								<div class="fg-line">
										<input name="nomEngagement" id="nomEngagement"  readonly="true" value="${nomEngagement}"type="text" class="form-control input-lg" disabled="disabled"/>
								</div>
								
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
								<h2>Piéce:</h2>
								</div>
									
								<div class="fg-line">
									<input readonly="true" name="pieceSelection" id="pieceSelection"  value="${idPiece}" type="text" class="form-control input-lg" />
								</div>
								
								<div class="form-group">
									<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
										<h2>Montant Global </h2>
									</div>
									<div class="fg-line">
										<input name="montantglobal" readonly="true" id="montantglobal" value="${montantglo}" type="text" class="form-control input-lg"/>
									</div>
							    </div>
							    <br>
								
								<table  class="table table-bordered" style="background:#CCCCCC">
										<thead >
									
											<tr>
												<th data-column-id="id" data-type="numeric">Section</th>
												<th data-column-id="option">Chapitre</th>
												<th data-column-id="sender">Rebrique</th>
												<th data-column-id="sender">Montant engagé</th>
												<th data-column-id="sender">montant réalisé</th>
												<!--<th data-column-id="received" data-order="desc">Received</th>
												<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>-->
											</tr>
										</thead>
										<tbody id="tableShowRows">
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>	
												<td>
													<div class="form-group" style="margin-bottom: 0px;">
														<div class="fg-line">
															<input type="text" class="form-control" placeholder="Montant réalisé" vk_1fb3d="subscribed">
														</div>
													</div>
												</td>
											</tr>
										
										</tbody>
									</table>					
							</div>
								
						</div>	
						<div class="card">
							<div class="card-body card-padding">
								<br>
								<br>
								<div class="btn-group btn-group-lg" role="group" style=" width:100%">
									<button id="btnSM" type="button" style="width:33%" class="btn bgm-teal waves-effect" onclick ="ShowLines()"><i class="zmdi zmdi-account zmdi-hc-fw" onclick="addRow()"></i>   Saisie Mannuelle </button>
									<button  id ="btnAG"type="button" style="width:34%" class="btn bgm-pink waves-effect" onclick="showGuides();"><i class="zmdi zmdi-view-list-alt zmdi-hc-fw" ></i>   A partir d'un guide</button>
									<a href="NewGuide.html"><button type="button" style="width:33%" class="btn bgm-green btn-lg waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i>   Creer un guide</button> </a>
								
								</div>
								<div style="visibility: collapse;">
									<input type="text" id="nb_element" name="nb_element" value="${taille}"></input> 
								</div>
							</div>
							
						</div>
							
						<div class="card" id="card" >
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
										 <c:forEach items="${list}" var="list">
                           			 
                           			 <script>
		                           			var element= document.getElementById('tableAddGuide');
		                					var tr = document.createElement('tr');
		                					var row = element.rows.length;
		                					document.getElementById('nb_element').value=row + 1;
		                					tr.innerHTML='<tr><td><div class="form-group"><div class="fg-line"><input readonly="true"  type="text" value= "${list.cpt}" name="idCompte'+row+'" class="form-control compte" placeholder="Numero de compte" vk_1fb3d="subscribed">'
		                						+'						</div>'
		                						+'					</div>'
		                						+'				</td>'
		                						+'				<td><div class="form-group"><div class="fg-line"><input  readonly="true" type="text" value= "${list.rolecpt}" name="type'+row+'" class="form-control "  vk_1fb3d="subscribed">'
		                						+'						</div>'
		                						+'					</div>'
		                						+'				</td>'
		                						+'				<td>'
		       
		                						+'				<div class="form-group">'
		                						+'					<div class="fg-line">'
		                						+'						<input readonly="true" type="text"'
		                						+'name="montant'+row+'"'
		                						+'class="form-control input-mask montant" value="'+${list.pourcentage} +'"   vk_129f4="subscribed">'
		                						+'					</div>'
		                						+'				</div>'
		                						+'				</td>'
		                						+'			</tr>';	
		                				
		                					
		                					element.appendChild(tr);
		                					addValidationRules();




                           			 </script>
  
                   				  </c:forEach>	
                   				  
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
										<button class="btn bgm-green btn-lg waves-effect" style="align"  type="submit"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
									</div>
							</div>	
						</div>
					</form>
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
		
		
		<!-- Javascript Libraries -->	
		
 
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		
        <script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>
		<!---new JS-->

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
        
		function checked(){
			var checkedValue = null; 
			var inputElements = document.getElementsByClassName('typecheckbox');
			for(var i=0; inputElements[i]; ++i){
				  if(inputElements[i].checked){
					   checkedValue = inputElements[i].value;
					   break;
				  }
			}
			unShowGuides();
			var op="guide";
			document.getElementById('typeop').value=op;
			document.getElementById('idguideselected').value=checkedValue;
			document.getElementById("opBudgForm").submit();
			
		}
		
		function showGuides(){
		var element= document.getElementById('divDialog');
		element.style.visibility="";
		}
		function unShowGuides(){
				var element= document.getElementById('divDialog');
				element.style.visibility="hidden";
									
		}

		function ShowLines(){
		var element= document.getElementById('card');
		element.style.visibility="";
		}


		function valider()
		{
			var op="validation";
			document.getElementById('typeop').value=op;

			document.getElementById('nb_element').value=${taille};
			document.getElementById('dateOperation').value= ${date};
			document.getElementById('pieceSelection').value=${idPiece};
			document.getElementById('nomEngagement').value=${nomEngagement};
			
			document.getElementById("opComptForm").submit();

		}
		
        </script>
        
		<script>
    	$("#opBudgForm").validate();
    	
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
    	
        $("#engaSelection").rules("add", {
            valueNotEquals: "-- Choisir un engagement --",
            messages:{
            	valueNotEquals:"Veuillez choisir un engagement !"	
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
					tr.innerHTML='<tr><td><div class="form-group"><div class="fg-line"><input type="text" name="idCompte'+row+'" class="form-control compte" placeholder="Numero de compte" vk_1fb3d="subscribed">'
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
						+'						<input type="text"'
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
			var selectElement = document.getElementById("engaSelection");
			selectElement.onchange = function (){
				var engaId = document.getElementById("engaSelection").value;
				if(engaId!=0){
					$.getJSON(	'${home}findPieces.json'+'?tierId='+0+"&engaId="+engaId,
								{ajax : 'true'}, 
								function(data){
									var html = '<option value="">-- Choisir une piece --</option>';
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
				}else{
					var html = '<option value="0">-- Choisir une piece --</option>';
					$('#selectPiece').html(html);
				}
				
			}
			</script>

    
    
</body>


     

<!-- D?lloped by Juba Agoun on April 2016-->
</html>