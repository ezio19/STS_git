<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

 <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SYSTEME BUDGETAIRE ET COMPTABLE</title>

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

     <c:import url="header.jsp"></c:import>
     <c:import url="sidebar.jsp"></c:import>
  <section id="main">
            <aside id="sidebar" class="sidebar c-overflow">
                <div class="profile-menu">
                    <a href="#">
                        <div class="profile-pic">
                            <img src="img/profile-pics/1.jpg" alt="">
                        </div>

                        <div class="profile-info">
                            User 

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
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Transfert </a>

                        <ul>
                            <li><a href="addDemandeTransfertInterne.html">Transfert interne</a></li>
                            <li><a href="addDemandeTransfertExterne.html">Transfert Externe</a></li>
                        </ul>
                    </li>
                    <li><a href="typography.html"><i class="zmdi zmdi-format-underlined"></i> Engagements</a></li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-widgets"></i> Ajouter Fournisseur</a>

                      
                    </li>
                    
                    
                </ul>
            </aside>

            <aside id="chat" class="sidebar c-overflow">

                <div class="chat-search">
                    <div class="fg-line">
                        <input type="text" class="form-control" placeholder="Search People">
                    </div>
                </div>

                <div class="listview">
                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left p-relative">
                                <img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
                                <i class="chat-status-busy"></i>
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Jonathan Morris</div>
                                <small class="lv-small">Available</small>
                            </div>
                        </div>
                    </a>

                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left">
                                <img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lv-title">David Belle</div>
                                <small class="lv-small">Last seen 3 hours ago</small>
                            </div>
                        </div>
                    </a>

                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left p-relative">
                                <img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
                                <i class="chat-status-online"></i>
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Fredric Mitchell Jr.</div>
                                <small class="lv-small">Availble</small>
                            </div>
                        </div>
                    </a>

                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left p-relative">
                                <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
                                <i class="chat-status-online"></i>
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Glenn Jecobs</div>
                                <small class="lv-small">Availble</small>
                            </div>
                        </div>
                    </a>

                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left">
                                <img class="lv-img-sm" src="img/profile-pics/5.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Bill Phillips</div>
                                <small class="lv-small">Last seen 3 days ago</small>
                            </div>
                        </div>
                    </a>

                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left">
                                <img class="lv-img-sm" src="img/profile-pics/6.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Wendy Mitchell</div>
                                <small class="lv-small">Last seen 2 minutes ago</small>
                            </div>
                        </div>
                    </a>
                    <a class="lv-item" href="#">
                        <div class="media">
                            <div class="pull-left p-relative">
                                <img class="lv-img-sm" src="img/profile-pics/7.jpg" alt="">
                                <i class="chat-status-busy"></i>
                            </div>
                            <div class="media-body">
                                <div class="lv-title">Teena Bell Ann</div>
                                <small class="lv-small">Busy</small>
                            </div>
                        </div>
                    </a>
                </div>
            </aside>
            <section id="content">
                <div class="container">
                    <div class="block-header">
                        <h2> Demande Transfert Interne</h2>
                    
                        <ul class="actions">
                            <li>
                                <a href="#">
                                    <i class="zmdi zmdi-trending-up"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="zmdi zmdi-check-all"></i>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">
                                    <i class="zmdi zmdi-more-vert"></i>
                                </a>
                    
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li>
                                        <a href="#">Refresh</a>
                                    </li>
                                    <li>
                                        <a href="#">Manage Widgets</a>
                                    </li>
                                    <li>
                                        <a href="#">Widgets Settings</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    
                    </div>
					
					
					
         
      <form:form commandName="demandeTransfert">                
                   <div class="card">
                        <div class="card-header">
                            <h2 id="label">DEMANDE</h2>
                        </div>
                        
                        <div class="card-body card-padding">
                            <div class="row">
							<div class="col-sm-3 m-b-20">
                                    <div class="form-group fg-line">
                                   
                                        <label >Date demande</label>
                                   <div class="input-group form-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                            <div class="dtp-container fg-line">
                                            <form:input type='text' class="form-control date-picker" placeholder="Click here..." path="date_demande"/>
                                   </div>
                                    </div>
                                    </div>
                            </div>
							
							
							 <div class="col-sm-3 m-b-20">
                                    <label >Montant</label>
                                    
                                    <div class="input-group form-group">
                                       
                                            <div class="dtp-container fg-line">
                                          
                                          <form:input type="numerics" class="form-control input-mask"  data-mask="00000000" path="montant"/>
                                       
                                        </div>
                                    </div>
                               </div>
							
							

							
                             	 <div class="col-sm-3 m-b-20">
                                    
                              <div class="form-group fg-line">
                                        <label >Code monnaie</label>
                                   
                                   <form:select class="form-control" path="code_monnaie">
                                                    <option>DZD</option>
                                                    <option>USD</option>
                                                    <option>EUR</option>
                                                   
                                                </form:select>
                                      
                                </div>
                                
                                		<div class="card">
							<div class="card-body card-padding">
								
								<div style="visibility: collapse;">
									<input type="text" id="nb_element" name="nb_element">1</input> 
								</div>
							</div>
							
						</div>
							
                                							
							
                 
                                </div> 
                            </div>
                        </div>
                    </div>                   

<div class="card">
					   <div class="card-header">
					      <h2 id="label">DEMANDEUR</h2>
						</div>
                   <div class="card-body card-padding">
						
						<div class="table-responsive" style="padding-bottom:16px">
								
								<table  class="table table-bordered">
									<thead>
								
										<tr>
											<th data-column-id="option">Chapitre</th>
											<th data-column-id="sender">Rubrique</th>
											<th data-column-id="option">Designation</th>
											
											<!--<th data-column-id="received" data-order="desc">Received</th>
											<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>-->
										</tr>
									</thead>
									<tbody id="tableAddGuidef">
										<tr>
											<td>
											<div class="form-group">
												
											  <input name ="finaldyn" type="numerics" class="form-control" placeholder="Ajouter chapitre" vk_1fb3d="subscribed"">		
										    </div>
											</td>
												
											<td>
											<div class="form-group">
														<input name ="finaldyn" type="numerics" class="form-control" placeholder="Ajouter rubrique" vk_1fb3d="subscribed"">
												</div>
											</td>
											
											
											<td>
											<div class="form-group">
														<input name ="finaldyn" type="numerics" class="form-control" placeholder="Ajouter designation" vk_1fb3d="subscribed"">
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
												left: 80px;">Ajouter rubrique</p>
									</li>	
									</ul>
								</div>
		
							</div>
								
						</div>	
					
						
                              
                        
                   <div class="card">
					   <div class="card-header">
					      <h2>ETAT DE LA DEMANDE</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                       <div class="fg-line">
                       <div class="col-sm-3 m-b-20">
                      
                               
                                <form:select class="form-control" path="etat">
                                                    <option>EN ATTENTE</option>
                                                    <option>VALIDEE</option>
                                                    <option>REFUSEE</option>     
                                                </form:select>
                                       </div>
                        </div>
						 </div>  
                        </div>
				  </div>					
					   
				
					   
					    <div class="btn-demo">
                         <button  class="btn btn-danger btn-lg waves-effect"><i class="zmdi zmdi-undo zmdi-hc-fw" type="reset"></i>Annuler</button>
                         <button type="submit" name="addguide" class="btn bgm-green btn-lg waves-effect" style="align" id="sa-success"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Envoyer Demande</button>    
                    
                   <!-- 	<input type="submit" class="btn bgm-lightblue" style="text-align:center;"  value="Envoyer demande"/>           -->
        <!-- il faut rajouter ici une vérification de l'envoie de la demande si la demande a été bien envoyé on lui affiche un message  bien envoyé ! -->
                           
                           <!-- <button class="btn bgm-lightblue">Envoyer Demande</button> -->    
                              
                               
                        </div>
                              </form:form>
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

     

        <!-- Javascript Libraries -->
        <script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>

        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
        
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
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
        <script src="js/demo.js"></script>
       <script>function addRow() {
						
					var element= document.getElementById('tableAddGuidef');
					var tr = document.createElement('tr');
					var row = element.rows.length;
					document.getElementById('nb_element').value=row + 1;
					
					tr.innerHTML='<tr><td><div class="form-group"><input name ="chapitredyn"'+row+'" class="form-control" placeholder="Ajouter chapitre" vk_1fb3d="subscribed">'
						+'						</div>'
						+'					</div>'
						+'				</td>'
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<input name ="rubriquedyn"'+row+'" type="text" class="form-control" placeholder="Ajouter rubrique" vk_1fb3d="subscribed"">'
						+'					</div>'
						+'				</div>'
						+'				</td>'	
						+'				<td>'
						+'				<div class="form-group">'
						+'					<div class="fg-line">'
						+'						<input name ="sectiondyn"'+row+'" type="text" class="form-control" placeholder="Ajouter designation" vk_1fb3d="subscribed"">'
						+'					</div>'
						+'				</div>'
						+'				</td>'	
						   
								
						+'			</tr>';	
				
					
										
											
					element.appendChild(tr);
				}
		
		
		</script>
        
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
                swal("Demande ajoutée!", "La demande a été ajouté avec succes!", "success")
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
