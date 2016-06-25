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
        
        <script type="text/javascript">
        function deleteRow() {
            try {
            var table = document.getElementById('tableGuide');
            var rowCount = table.rows.length;

            for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var chkbox = row.cells[0].childNodes[0];
                if(null != chkbox && true == chkbox.checked) {
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
    //        	document.getElementById("tableGuide").rows[i].cells[1].innerHTML = i;                                   
				
				for(var i=0; i<rowCount; i++) {
                var row = table.rows[i];
                var chkbox = row.cells[0].childNodes[0];
                if(null != chkbox && true == chkbox.checked) {
                	document.getElementById("tableGuide").rows[i].cells[1].innerHTML = i;  
                }
            }
                } 

      		  }


        </script>
    </head>
<body>

<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
<c:import url="./header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="./sidebar.jsp"></c:import>
<!-- L'interface principale -->


<section id="main">
			
         <section id="content">
				<div class="container">
					<div class="card">
						<div class="card-body card-padding" >
							<div style="display:inline; margin:10px; width: 301px; padding:10px; position: absolute;top:16px;right:4px;">
									<form method="get">
										<input  type="text" class="search-field form-control" placeholder="Search" name="nameSearch"style="display:inline;     width: 86%;">
										<button type="submit" class="btn btn-info waves-effect"><i class="zmdi zmdi-search"></i></button>
									</form>
							</div>
							
							   <div style="visibility: collapse;">
										<input type="text" id="nb_element" name="nb_element">1</input> 
							</div> 
							
							<table id="tableGuide" class="table table-bordered" style="margin-top: 65px;">
									<thead>
								
										<tr>
											<th data-column-id="check" data-type="checkbox" ></th>
											<th data-column-id="id" data-type="numeric">N°</th>
											<th data-column-id="nom" data-type="numeric">Nom du guide</th>
											<th data-column-id="typGuide">Type du guide</th>
											<th data-column-id="option">Description</th>
											<th data-column-id="sender">Date de création</th>
											
											
										</tr>
									</thead>
									
									
									<tbody >
									
							
									
									
									<c:forEach items="${guides}" var="gui">
							        <tr>
							       			<td >
													<input type="checkbox" >
											</td>
										
											<td>
									            <c:out value="${gui.id}" />
									        </td>
									        <td>
									            <c:out value="${gui.nom_guide}" />
									        </td>
									        <td>
									        	<c:out value="${gui.type_facture}" />
									        </td>
									        <td>
									            <c:out value="${gui.descriptionguide}" />
									        </td>
									        <td>
									            <c:out value="${gui.date}" />
									        </td>
							        </tr>
							    </c:forEach>
						
						
						
						
									
									</tbody>
								</table>
								<br>
								<br>
								
								<div style="position: absolute;bottom: 16px;right: 16px;">
									<button class="btn bgm-gray btn-primary waves-effect" ><i class="zmdi zmdi-edit zmdi-hc-fw"></i>Modifier la selection</button>
									<button type="button" class="btn btn-danger btn-primary waves-effect" id="sa-warning" onClick="deleteRow()"><i class="zmdi zmdi-close zmdi-hc-fw"></i>Supprimer Selection</button>
									<a href="NewGuide.html"><button class="btn bgm-green btn-primary waves-effect" id="sa-warning"><i class="zmdi zmdi-plus zmdi-hc-fw"></i> Ajouter guide</button></a>
								</div>			
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
                swal("Guide Ajout�!", "Le guide a �t� ajout� a la base!", "success")
            });

            //Warning Message
            $('#sa-warning').click(function(){
                swal({   
                    title: "Êtes vous sur de vouloir supprimer ?",   
                    text: "Ceci est une suppression définitive!",   
                    type: "warning",   
                    showCancelButton: true,   
                    confirmButtonColor: "#DD6B55",   
                    confirmButtonText: "Oui, Supprimer!",   
                    closeOnConfirm: false 
                }, function(){   
                    swal("Supprimer!", "Le guide a été supprimer correctement.", "success"); 
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