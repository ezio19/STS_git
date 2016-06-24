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
        <title>Journal des écritures </title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
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
                    <a href="index-2.html">Journal des écritures	</a>
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
			
           	
			<section id="content">
				<div class="container">
					
						<div class="card">
							<div class="card-body card-padding">
								<form action="${action}" method="GET"> 
									<div style="padding-left:147px; width: 100%;" >
										<div class="card-header" style="padding-left: 0px; padding-bottom:10px;display:inline-flex;">
											<h2>Type a rechercher:</h2>
										</div>
										<div class="form-group" style="display:inline-flex;     margin-right: 24px;">
											<div class="fg-line">
												<div class="select">
													<select style="width: 158px;"type class="form-control" name="searchOption">
														<option value="1" selected="selected">Toutes les Opéraitons</option>
														<option value="2" >Opération Comptable</option>
														<option value="3">Opration Budgétaire</option>
													</select>
												</div>
											</div>
										</div>
										<div class="card-header" style="padding-left: 0px; padding-bottom:10px;display:inline-flex;">
											<h2>Du:</h2>
										</div>
										
										<input type="date" name ="dateDeb" class="form-control input-mask" style="width: 165px;display:inline-flex;">
										<div class="card-header" style="display:inline-flex;">
											<h2>Au:</h2>
										</div>
										<input type="date" name ="dateFin"  class="form-control input-mask" style="margin-right:10px;width: 165px;display:inline-flex;">
										<button type="submit" class="btn btn-info waves-effect"><i class="zmdi zmdi-search"></i></button>
									</div>
								</form> 	
								<table class="table table-bordered" style="background:#CCCCCC">
										<thead>
									
											<tr>
												<th data-column-id="id" data-type="numeric">Piece</th>
												<th data-column-id="option">Date</th>
												<th data-column-id="sender">Engagement</th>
												<th data-column-id="Mnt_rbrq">Débit</th>
												<th data-column-id="sender">Crédit</th>
												
												<!--<th data-column-id="received" data-order="desc">Received</th>
												<th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>-->
											</tr>
										</thead>
										<tbody id="tableShowRows">
											<c:forEach items="${listOp.operationBudgetaire}" var="gui">
										        <tr>
									       															
													<td>
											             <c:out value="${gui.operationComptable.pieceComptable}" />
											        </td>
											        <td/>
											             
											        	<c:out value="${gui.operationComptable.dateOperation}" />
											        <td>
											        	<c:out value="${gui.engagement}" />
											        </td>
											        <td>
											           <c:out value="${gui.operationComptable.debit}" />
											        </td>
											        <td>
											         	 <c:out value="${gui.operationComptable.credit}" /> 
											        </td>
										        </tr>
										    </c:forEach>
										    <c:forEach items="${listOp.operationComptable}" var="gui">
										        <tr>
									       															
													<td>
											             <c:out value="${gui.pieceComptable}" />
											        </td>
											        <td/>
											             <c:out value="${gui.dateOperation}" />
											        
											        <td>
											        	
											        </td>
											        <td>
											          <c:out value="${gui.debit}" />
											        </td>
											        <td>
											           <c:out value="${gui.credit}" />
											        </td>
										        </tr>
										    </c:forEach>
									
										</tbody>
								</table>
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
						+'								<option>D꣩t</option>'
						+'								<option>Crꥩt</option>'
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
    	<script>
    	function getUrlVars() {
    	    var vars = {};
    	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,    
    	    function(m,key,value) {
    	      vars[key] = value;
    	    });
    	    return vars;
    	  }
    	var fType = getUrlVars()["type"];
    	</script>
    
</body>


     

<!-- D?lloped by Juba Agoun on April 2016-->
</html>