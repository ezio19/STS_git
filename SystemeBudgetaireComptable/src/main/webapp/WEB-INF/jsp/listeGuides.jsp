<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <title>Liste des guides IFA</title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
        	
		   
        <script language="javascript">
        function deleteRow() {
            try {
            var table = document.getElementById('tableGuide');
            var rowCount = table.rows.length;

            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var chkbox = row.cells[0].childNodes[0];
                if(null != chkbox && true == chkbox.checked) {

                	
                	var tabledeleted = document.getElementById('tabledeleted');

                	
                    var rowCounttabledeleted = tabledeleted.rows.length-1;
                    var rowtabledeleted= tabledeleted.insertRow(rowCounttabledeleted+1);
        			document.getElementById('deleted').value= rowCounttabledeleted;

        			
	       			 var cell1 = rowtabledeleted.insertCell(0);
	     			 var para = document.createElement("P");                      
	     			 para.name="listdel["+rowCounttabledeleted+"]";
		             var idcpt=  document.getElementById('tableGuide').getElementsByTagName('tr')[i].cells[1].innerHTML;	             
	     			 var t = document.createTextNode(rowCounttabledeleted);      
	     			 para.appendChild(t);                                             			
	     			 cell1.appendChild(para);   

        	         
                	
                     

                	 
                    table.deleteRow(i);
                    rowCount--;
                    i--; 
          
                }
            }      
            
            }catch(e) {
                alert(e);
                
            }
          var table = document.getElementById('tableGuide');
            var rowCount = table.rows.length;

            for(var i=1; i<rowCount; i++) {
              	document.getElementById("tableGuide").rows[i].cells[1].innerHTML = i;                                   
    		
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
                    <a href="index-2.html">Liste des guides IFA</a>
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
			
			<form name="deletedguides" method="post" style="visibility: collapse;">
					<input type="text" name="iddeleted" id="iddeleted"> </input>
					<input type="text" name="namedeleted" id="namedeleted"> </input>
					<input type="text" name="typeGuidedeleted" id="typeGuidedeleted"> </input>
					<input type="text" name="desciptiondeleted" id="desciptiondeleted"> </input>
					<input type="text" name="datedeleted" id="datedeleted"> </input>
					<input type="text" name="typeop" id="typeop"> </input>
					
			</form>
			
				
			<form  name="formguides" method="post">
					<div class="card">
						<div class="card-body card-padding" >
							<div style="display:inline; margin:10px; width: 301px; padding:10px; position: absolute;top:16px;right:4px;">
									
									<input type="text" class="search-field form-control" placeholder="Search" style="display:inline;     width: 86%;">
									<button class="btn btn-info waves-effect"><i class="zmdi zmdi-search"></i></button>
							</div>
							
							   <div style="visibility: collapse;">
										<input type="text" id="nb_element" name="nb_element">1</input> 
							</div> 
							
							<div style="visibility: collapse;">
							<input type="text" id="deleted" name="deleted">1</input> 
							</div>
					
							<div class="table-responsive" style="padding-bottom:16px">
										
							<table id="tableGuide" class="table table-bordered" style="margin-top: 65px;">
									<thead>
								
										<tr>
											<th data-column-id="id" data-type="numeric">N°</th>
											<th data-column-id="nom_guide" data-type="numeric">Nom du guide</th>
											<th data-column-id="typeGuide">Type du guide</th>
											<th data-column-id="desciption">Description</th>
											<th data-column-id="date">Date de création</th>
											<th data-column-id="option">Opérations</th>
											
										</tr>
									</thead>
									
									
									<tbody >
										
									<c:forEach items="${guides}" var="gui">
                           			 <tr>
				                            <td id="id" class="text-left" style=""> ${gui.id}</td> 
				                            <td id="nom_guide" class="text-left" style="">${gui.nom_guide}</td>
				                            <td id="type_facture" class="text-left" style="">${gui.type_facture}</td>
				                            <td id="descriptionguide" class="text-left" style="">${gui.descriptionguide}</td>
				                            <td id="date" class="text-left" style=""> ${gui.date}</td>
											<td class="text-left" style="">
											
				                            <button type="button"  name="deleteguide" class="editingInfors btn btn-icon command-edit waves-effect waves-circle" ><span class="zmdi zmdi-edit" data-row-id="${gui.id}"></span></button>
				                            <button type="button" name="modifierguide"  class="compte-suppr extern btn btn-icon command-delete waves-effect waves-circle" ><span class="zmdi zmdi-delete" data-row-id="${gui.id}"></span></button>
											 
											</td>	 
                       				 </tr>

  
                   				  </c:forEach>	
									
									</tbody>
								</table>
								</div>
								<br>
								<br>
								
								<div style="position: absolute;bottom: 16px;right: 16px;">
									<a href="NewGuide.html"><button class="btn bgm-green btn-primary waves-effect"><i class="zmdi zmdi-plus zmdi-hc-fw"></i> Ajouter guide</button></a>
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
                swal("Guide Ajout�!", "Le guide a �t� ajout� a la base!", "success")
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
		   $('button.compte-suppr.extern').on('click',function(){

				 
		    var x=$($(this).closest('tr')).attr('data-row-id');
		  	var id= $($(this).closest('tr')).find('td').eq(0).text();
		  	var nom_guide= $($(this).closest('tr')).find('td').eq(1).text();
		   	var type_facture= $($(this).closest('tr')).find('td').eq(2).text();
		   	var descriptionguide= $($(this).closest('tr')).find('td').eq(3).text();
		   	var date= $($(this).closest('tr')).find('td').eq(4).text();
			var op="suppresison";
			

		   	document.getElementById('iddeleted').value=id;
			document.getElementById('namedeleted').value=nom_guide;
			document.getElementById('typeGuidedeleted').value=type_facture;
			document.getElementById('desciptiondeleted').value=descriptionguide;
			document.getElementById('datedeleted').value=date;
			document.getElementById('typeop').value=op;

			$( "form:first" ).submit();
				        this.closest('tr').remove();
		
		});
			
		   
		   </script>
		   
		   <script type="text/javascript">                 
		   $('button.editingInfors').on('click',function(){

				 
		    var x=$($(this).closest('tr')).attr('data-row-id');
		  	var id= $($(this).closest('tr')).find('td').eq(0).text();
		  	var nom_guide= $($(this).closest('tr')).find('td').eq(1).text();
		   	var type_facture= $($(this).closest('tr')).find('td').eq(2).text();
		   	var descriptionguide= $($(this).closest('tr')).find('td').eq(3).text();
		   	var date= $($(this).closest('tr')).find('td').eq(4).text();
			var op="modification";

		   

		   	document.getElementById('iddeleted').value= id;
			document.getElementById('namedeleted').value= nom_guide;
			document.getElementById('typeGuidedeleted').value= type_facture;
			document.getElementById('desciptiondeleted').value= descriptionguide;
			document.getElementById('datedeleted').value= date;
			document.getElementById('typeop').value= op;
			

			$( "form:first" ).submit();
				     
		
			});
			
		   
		   </script>
		        
		        
		       
		        
	
    
    
</body>


     

<!-- D?lloped by Juba Agoun on April 2016-->
</html>