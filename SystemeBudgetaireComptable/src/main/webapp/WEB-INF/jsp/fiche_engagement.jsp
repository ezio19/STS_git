<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <!--[if IE 9 ]><html class="ie9"><![endif]-->
    
<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:33:42 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Système budgétaire et comptable</title>

        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
        <link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
        <link href="vendors/bower_components/nouislider/distribute/jquery.nouislider.min.css" rel="stylesheet">
        <link href="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
        <link href="vendors/farbtastic/farbtastic.css" rel="stylesheet">
        <link href="vendors/bower_components/chosen/chosen.min.css" rel="stylesheet">
        <link href="vendors/summernote/dist/summernote.css" rel="stylesheet">


        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
        <!-- Following CSS are used only for the Demp purposes thus you can remove this anytime. -->
        <style type="text/css">
            .toggle-switch .ts-label {
                min-width: 130px;
            }
        </style>
    </head>
    
    <body>
        		<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
		<c:import url="./header.jsp"></c:import>
        <!--Le sidebar/navigation drawer (android) -->
		<c:import url="./sidebar.jsp"></c:import>
		
        <section id="main">               
           <section id="content">
				<div class="container">
					<form method="post">
						<div class="card">
						<div class="card-header">
					      <h2 id="label" >ENGAGEMENT</h2>
						</div>
							
							<div class="card-body card-padding">
							
							         <div class="row">

							 
							<div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                        <label >Numéro</label>
                                        <input name="numeng" type="numerics" class="form-control input-mask"   placeholder="eg: 0001">
                                    </div>
                            </div>
							
							
							 <div class="col-sm-3 m-b-20">
                                    <label >Date de l'opération</label>
                                    
                                    <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                            <div class="dtp-container fg-line">
                                            <input name="dateOperation" type="text" class="form-control input-mask" data-mask="00/00/0000" placeholder="eg: 23/05/2014" maxlength="10" autocomplete="off">
                                        </div>
                                    </div>
                              </div>
                              
                              <div class="col-sm-3 m-b-20">     
                              <div class="form-group fg-line">
                                        <label >Montant Engagé</label>
                                        <input name="montantTotal"  type="numerics" class="form-control input-mask"  data-mask="00000000" >
                                    </div>
                                    <div class="form-group">
                                        <div class="fg-line">
                                            <div class="select">
                                                <select class="form-control">
                                                    <option>DZD</option>
                                                    <option>USD</option>
                                                    <option>EUR</option>
                                                   
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                              
                              <div class="form-group">
                                <div class="fg-line">
                                    <label>Opération</label>
                                    <input type="text" class="form-control input-sm" placeholder="Opération motrice de l'engagement" name="nomEnga" id="nomEnga">
                                </div>
                            </div>
                              
                           <div class="form-group">
                                <div class="fg-line">
                                    <label>Justificatif</label>
                                    <input type="text" class="form-control input-sm" placeholder="justificatif">
                                </div>
                            </div>
                              
                             <div class="form-group">
                                <div class="fg-line">
                               
							   
							   <div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Fournisseur:</h2>
								</div>
									
								<div class="form-group">
									<div class="fg-line">
										<div class="select">
											<select class="form-control"  id="tierSelection" name="tierSelection">
												<option value="0">-- Choisir un fournisseur --</option>
												<c:forEach items="${listTiers}" var="tier">
													<option value="${tier.id}">${tier.acronyme}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
                                 
								
                                
								<div>
								<a href="FicheFournisseur.html">Créer Fournisseur</a>
								</div>
								<div class="card">
							<div class="card-body card-padding">
								
								<div style="visibility: collapse;">
									<input type="text" id="nb_element" name="nb_element" value="1">1</input> 
								</div>
							</div>
							
						</div>
							
							
							
							<div class="card-header">
					      <h2 id="label" >LIGNES ENGAGEMENT</h2>
						</div>
								<div class="table-responsive" style="padding-bottom:16px">
								
								<table  class="table table-bordered">
									<thead>
								
										<tr>
											<th data-column-id="option">Section</th>
											<th data-column-id="sender">Chapitre</th>
											<th data-column-id="option">Rubrique</th>
											<th data-column-id="sender">Solde initial</th>
											<th data-column-id="sender">Montant engagé</th>
											<th data-column-id="sender">Solde final </th>
											
										</tr>
									</thead>
									<tbody id="tableAddGuidef">
										<tr>
											<td>
												<div class="select">
													<select class="form-control "  id="sectionSelection0">
														<option value="0">-- Section --</option>
														<c:forEach items="${listSections}" var="section">
															<option value="${section.idSection}">${section.idSection}</option>
														</c:forEach>
													</select>
												</div>
											</td>
											<td>
												<div class="select">
													<select class="form-control "  id="chapitreSelection0">
														<option value="0">-- Chapitre --</option>
														<c:forEach items="${listChapitres}" var="chapitre">
															<option value="${chapitre.codeChapitre}">${chapitre.codeChapitre}</option>
														</c:forEach>
													</select>
												</div>
											
											
											
											</td>
											
											
											<td id="0">
												<div class="select">
														<select class="form-control selectRub "  id="rubriqueSelection0" name="rubriqueSelection0" >
															<option value="0"  >-- Rubrique --</option>
															<c:forEach items="${listRubriques}" var="rubrique">
																<option  value="${rubrique.codeRubrique}montant${rubrique.montant}"  >${rubrique.codeRubrique}</option>
															</c:forEach>
														</select>
												</div>
											</td>
												
												
											
											<td>
											
												<input name ="montantdyn0" id ="montantdyn0" type="numerics" class="form-control " vk_1fb3d="subscribed">
											</td>
											
											<td>
												<input name ="engagedyn0" id ="engageddyn0" type="numerics" class="form-control" vk_1fb3d="subscribed">
											</td>
											<td>
												<div class="form-group">
												
														<input name ="finaldyn0" id ="finaldyn0" type="numerics" class="form-control" vk_1fb3d="subscribed">
													
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
												left: 80px;">Ajout une rubrique</p>
									</li>	
									</ul>
								</div>
							<div style="position: absolute;
												right: 35px;
												left: 35px;">
							
							
							
					
							</div>
								
						</div>	
					<div style="position: absolute;
												
												bottom: 80px;
												right: 35px;">
							<button type="button" class="btn bgm-lightblue" onclick="calculsolde();">ok</button> 
							
							</div>
							<br>
							<br>
						
						
									<div style="position: absolute;
											bottom: 16px;
											right: 16px;">
										<button class="btn btn-danger btn-lg waves-effect"><i class="zmdi zmdi-undo zmdi-hc-fw"></i>Annuler</button>
										<button class="btn bgm-green btn-lg waves-effect" style="align" id="sa-success" type="submit"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
									</div>
							</div>	
						</div>
					</form>
					
				</div>
				
			</section>
            
            
        </section>
        
        <footer id="footer">
            Copyright &copy; 2015 The Lost 17
            
            <ul class="f-menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </footer>

        <!-- Page Loader -->
        <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Please wait...</p>
            </div>
        </div>

        <!-- Older IE warning message -->
        <!--[if lt IE 9]>
            <div class="ie-warning">
                <h1 class="c-white">Warning!!</h1>
                <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
                <div class="iew-container">
                    <ul class="iew-download">
                        <li>
                            <a href="http://www.google.com/chrome/">
                                <img src="img/browsers/chrome.png" alt="">
                                <div>Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.mozilla.org/en-US/firefox/new/">
                                <img src="img/browsers/firefox.png" alt="">
                                <div>Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com">
                                <img src="img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.apple.com/safari/">
                                <img src="img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                                <img src="img/browsers/ie.png" alt="">
                                <div>IE (New)</div>
                            </a>
                        </li>
                    </ul>
                </div>
                <p>Sorry for the inconvenience!</p>
            </div>   
        <![endif]-->

        <!-- Javascript Libraries -->

        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-select.js"></script>
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/nouislider/distribute/jquery.nouislider.all.min.js"></script>
        <script src="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        <script src="vendors/bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
        <script src="vendors/summernote/dist/summernote-updated.min.js"></script>


        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="vendors/bower_components/chosen/chosen.jquery.min.js"></script>
        <script src="vendors/fileinput/fileinput.min.js"></script>
        <script src="vendors/input-mask/input-mask.min.js"></script>
        <script src="vendors/farbtastic/farbtastic.min.js"></script>
         <script src="js/functions.js"></script>
				<script>
			
	function addListener(){
		$(".selectRub").on("change",function()
				{
			
					
					
					mont=$(this).val();
					deg=mont.split("montant");
					
					idRub=deg[0];
					montantInit=deg[1];
					a=$(this).parent().closest("td").attr("id");
					$("#montantdyn"+a).val(montantInit);
					
				}		
				)
	}
	addListener();
	
	
	
	
	
	
	
	
	
	</script>
    
		<script>
            var rubriques="";
            function addRow() {
					var element= document.getElementById('tableAddGuidef');
					var tr = document.createElement('tr');
					var row = element.rows.length;
					document.getElementById('nb_element').value=row + 1;
					

                tr.innerHTML='<tr id="'+row+'"><td><div class="select"><select class="form-control "  id="sectionSelection'+row+' "name ="sectionSelection'+row+'">'
              		    +'	<option value="0">-- Section --</option><c:forEach items="${listSections}" var="section"><option value="${section.idSection}">${section.idSection}</option>'
              	        +'						</c:forEach> </select>'
              		
                        +'					</div>'
                        +'				</td>'
                        +'				<td>'
                        +'					<div class="select">'
                        +'						<select class="form-control "  id="chapitreSelection'+row+' "name ="chapitreSelection'+row+'">'
                        +'							<option value="0">-- Chapitre --</option> <c:forEach items="${listChapitres}" var="chapitre">'
                        +'								<option value="${chapitre.codeChapitre}">${chapitre.codeChapitre}</option> </c:forEach>'
                        +'						</select> </div>'
                        +'				</td>'
                      
                        
                        +'				<td id="'+ row+'">'
                        +'					<div class="select">'
                        +'						<select class="form-control selectRub"  id="rubriqueSelection'+row+'" name ="rubriqueSelection'+row+'">'
                        +'							<option value="0">-- Rubrique --</option> <c:forEach items="${listRubriques}" var="rubrique">'
                        +'								<option value="${rubrique.idRubrique}montant${rubrique.montant}">${rubrique.codeRubrique}</option></c:forEach>'
                        +'						</select> </div>'
                        +'				</td>'
                       
                        +'				<td>'

                        +'					<div class="fg-line">'
                        +'                      <input name ="montantdyn'+row+'" id ="montantdyn'+row+'" type="numerics" class="form-control" >'
                        +'					</div>'

                        +'				</td>'
                        +'				<td>'
                        +'				<div class="form-group">'
                        +'						<input name ="engageddyn'+row+'" id ="engageddyn'+row+'" type="numerics" class="form-control" vk_1fb3d="subscribed"">'
                        +'				</div>'
                        +'				</td>'
                        +'				<td>'
                        +'				<div class="form-group">'
                        +'                      <input name ="finaldyn'+row+'" id="finaldyn'+row+'" type="numerics" class="form-control" vk_1fb3d="subscribed""> '
                        +'				</div>'
                        +'				</td>'
                        +'			</tr>';

               /* var rubrique_id="#rubrique-select"+row;
                var final_dyn="#finaldyn"+row;
                var engagement_id="engageddyn"+row;
                var montant_rub="montantdyn"+row;
                var section_id="sectiondyn"+row;
                var chapitre_id="chapitredyn"+row;*/
                element.appendChild(tr);
          /*      var rubrique=$(rubrique_id);
                var chapitre=$(chapitre_id);
                var section=$(section_id);
                var montant=$(montant_rub);
                var engagement=$(engagement_id);
                var finalMontant=$(final_dyn);

                remplirRubrique(section,chapitre,rubrique,engagement,montant,finalMontant);*/
              	  addListener();
				}
				</script>

				
	<script>
		function calculsolde(){
					
					
					
					var row=document.getElementById('nb_element').value;
					
					for (var i = 0; i < row; i++) {
					
					
					diff=document.getElementById('montantdyn'+i).value-document.getElementById('engageddyn'+i).value;
				
					document.getElementById('finaldyn'+i).value=diff;
		}
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
                swal("Transaction Réussis!", "L'opération s'est effectuée!", "success")
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
			/*var selectElement = document.getElementById("fournSelection");
			selectElement.onchange = function (){
				var tierId = document.getElementById("fournSelection").value;
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
				
			}*/



            function remplirRubrique(section,chapitre,rubrique,engagement,montant,finalMontant) {
                //Initialisation
                //remplirRubrique(section,chapitre,rubrique,engagement,montant,finalMontant);

                if(rubriques=="")
                        $.getJSON('/nomenclatures_rubriques_list.json', {
                            ajax: 'true'
                        }, function (result) {
                            var rubriques = "";
                            for (var i = 0; i < result.rubriqueList.length; i++) {
                                console.log("Section " + i);
                                console.log("Code Section " + result.rubriqueList[i].codeRubrique);
                                console.log("Designation" + result.rubriqueList[i].designation);
                                rubriques += '<option value=';
                                rubriques += "" + result.rubriqueList[i].codeRubrique;
                                rubriques += '>';
                                rubriques += "" + result.rubriqueList[i].designation;
                                rubriques += '</option>';
                            }
                            //alert(htln);
                            $(rubrique).html(rubriques).selectpicker('refresh');

                        }).done(function () {
                            console.log("apres success");
                        })
                                .fail(function () {
                                    console.log("error");
                                })
                                .always(function () {
                                    console.log("complete toujours succes ou erreur");
                                });

                else
                    $(rubrique).html(rubriques).selectpicker('refresh');



            }
            

			</script>
			

        
    
    </body>

<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:34:11 GMT -->
</html>