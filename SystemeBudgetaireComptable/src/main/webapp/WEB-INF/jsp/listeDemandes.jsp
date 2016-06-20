<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <title>Liste des demandes de transfert</title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
		<script>
		function AfficherDemande(){
			 try {   
		            var table = document.getElementById('tableDemande');
		            var rowCount = table.rows.length;
		            alert("point00!");
		            for(var i=0; i<rowCount; i++) {
		                var row = table.rows[i];
		                var chkbox = row.cells[0].childNodes[0];
		                alert("point01!");
		                if(null != chkbox && true == chkbox.checked) {
		                   //--------
		                   
		                   alert("point02!");
		                }
		            }
		            }catch(e) {
		                alert(e);
		            }
		            var table = document.getElementById('tableDemande');
		            var rowCount = table.rows.length;

		            for(var i=1; i<rowCount; i++) {
		    //        	document.getElementById("tableGuide").rows[i].cells[1].innerHTML = i;                                   
						
						for(var i=0; i<rowCount; i++) {
		                var row = table.rows[i];
		                var chkbox = row.cells[0].childNodes[0];
		                if(null != chkbox && true == chkbox.checked) {
		                	document.getElementById("tableDemande").rows[i].cells[1].innerHTML = i;  
		                }
		            }
		                } 
		}
		</script>
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
                    <a href="index-2.html">Liste des demandes de transfert</a>
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
					<div class="card">
				
				
				
					<form name="deletedemande" method="post" style="visibility: collapse;">
					<input type="text" name="num_demande" id="num_demande"> </input>
					<input type="text" name="num_rubrique" id="num_rubrique"> </input>
					<input type="text" name="montant" id="montant"> </input>
					<input type="text" name="code_monnaie" id="code_monnaie"> </input>
					<input type="text" name="etat" id="etat"> </input>
					<input type="text" name="date_demande" id="date_demande"> </input>
					</form>
							
							 <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
                        <!--l'entete du tableau' -->
                        
                        
                        
                        
                        <thead>
                        <tr>
                            <th style="" class="text-left" data-column-id="id"><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">N°</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteLabel" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Rubrique</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteType" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Montant</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Code monnaie</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                             <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Visualisation</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                         </tr>
                        </thead>
                        
                        <!--Les ligne du tableau -->
                         
                       <c:forEach items="${liste}" var="c" varStatus="statut">
                          
                            <td id="num_demande" class="text-left" style=""> ${c.id}</td> 
                            <td id="num_rubrique" class="text-left" style="">${c.num_rubrique}</td>
                            <td id="montant" class="text-left" style="">${c.montant}</td>
                            <td id="code_monnaie" class="text-left" style="">${c.code_monnaie}</td>
                           
							<td class="text-left" style="">
							
                     
                            <button type="button" class="compte-show extern btn  waves-effect " ><span class="zmdi zmdi-delete" data-row-id="${c.num_demande}"></span></button>
							 
							</td>	 
                        </tr>

  
                      </c:forEach>
                        
                          
                    </table>    
						    
							<table  id="tableDemande" class="table table-bordered" style="margin-top: 65px;">
									
									
									
									<tbody id="tableAddDemande">
									
									<c:forEach items="${demandes}" var="dem" varStatus="statut">
							        <tr data-row-id="${statut.count}">
							       			 <td>
												<label class="checkbox checkbox-inline m-r-20">
													<input type="checkbox" value="option2">
													<i class="input-helper"></i>
												</label>
											</td>
											<td>
									            <c:out value="${dem.num_demande}" />
									        </td>
									        <td>
									            <c:out value="${dem.num_rubrique}" />
									        </td>
									        <td>
									        	<c:out value="${dem.montant}" />
									        </td>
									         <td>
									        	<c:out value="${dem.code_monnaie}" />
									        </td>
									        <td>
									            <c:out value="${dem.etat}" />
									        </td>
									        <td>
									            <c:out value="${dem.date_demande}" />
									        </td>
									         <td>
									        <button type="button" class="compte-suppr extern btn btn-icon command-delete  waves-circle" ><span class="zmdi zmdi-delete" data-row-id="${dem.num_demande}"></span></button>
							       		  </td>
							        </tr>
							    </c:forEach>
						
						
						
						
									
									</tbody>
								</table>
								
								
								
							
								<br>
								<br>
						
						
								<br>
								<br>
								
			
			         
     
                             
						</div>
					</div>	
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
		<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        
                <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        <script src="vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
        <script src="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
		
        <script src="vendors/bower_components/autosize/dist/autosize.min.js"></script>
		<!---new JS-->
		<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
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
                swal("Guide Ajout?!", "Le guide a ?t? ajout? a la base!", "success")
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
    
    <script type="text/javascript">                 
   $('button.compte-show.extern').on('click',function(){

    
  	var num_demande= $(this.closest('tr')).find('td').eq(0).text();
    var num_rubrique= $(this.closest('tr')).find('td').eq(1).text();
  	var montant= $(this.closest('tr')).find('td').eq(2).text();
   	var code_monnaie= $(this.closest('tr')).find('td').eq(3).text();
   	var etat= $(this.closest('tr')).find('td').eq(4).text();
	var date_demande= $(this.closest('tr')).find('td').eq(5).text();

	
 	document.getElementById('num_demande').value=num_demande;
	document.getElementById('num_rubrique').value=num_rubrique;
	document.getElementById('montant').value=montant;
	document.getElementById('code_monnaie').value=code_monnaie;
	document.getElementById('etat').value=etat;
	document.getElementById('date_demande').value=date_demande;

	$( "form:first" ).submit();

});
   
   </script>
 <% String montant = request.getParameter("montant");
session.setAttribute("montant",montant);  
%>
   
</body>


     

<!-- D?lloped by Juba Agoun on April 2016-->
</html>