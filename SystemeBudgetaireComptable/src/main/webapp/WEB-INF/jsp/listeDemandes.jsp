<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<c:import url="header.jsp"></c:import>
<section id="main">
    <c:import url="sidebar.jsp"></c:import>

			

			
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
                             <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Visualiser</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                         </tr>
                        </thead>
                        
                        <!--Les ligne du tableau -->
                         
                       <c:forEach items="${liste}" var="c" varStatus="statut">
                          
                            <td id="num_demande" class="text-left" style=""> ${c.id}</td> 
                            <td id="num_rubrique" class="text-left" style="">${c.num_rubrique}</td>
                            <td id="montant" class="text-left" style="">${c.montant}</td>
                            <td id="code_monnaie" class="text-left" style="">${c.code_monnaie}</td>
                           
							<td class="text-left" style="">
                                <button type="button" class="compte-show extern btn  waves-effect " ><span class="zmdi zmdi-arrow-forward" data-row-id="${c.num_demande}"></span></button>


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
                                                 <button type="button" class="compte-show extern btn  waves-effect " ><span class="zmdi zmdi-arrow-forward" data-row-id="${c.num_demande}"></span></button>
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