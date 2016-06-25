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
        <title>guide IFA</title>
        
        <!-- Vendor CSS -->
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
        
        		
		<script>
		function addChamp(){
					 
					var element= document.getElementById('newChamp');
					var tr = document.createElement('div');
					var element1 = document.createElement("input");
		            element1.type = "text";
		            element1.className="form-control input-lg";
		            element1.placeholder="Saisissez le nom du type ici!";
		            element1.name="type";
		            tr.appendChild(element1);
		            
		            
					element.appendChild(tr);
					document.getElementById("btnAdd").disabled="disabled";
					
		}
		</script>
		
        
        <SCRIPT language="javascript">
        function addRow() {

            var table = document.getElementById('tableAddguide');
	
            var rowCount = table.rows.length-1;
            var row = table.insertRow(rowCount+1);
			document.getElementById('nb_element').value= rowCount;


			 var cell1 = row.insertCell(0);
	         var checkb = document.createElement("input");
	         checkb.type = "checkbox";
	         checkb.name="chkbox[]";
	         checkb.style="padding-left:10px;"
	         cell1.appendChild(checkb);

	            

			 var cell1 = row.insertCell(1);
	    
			var para = document.createElement("P");                       // Create a <p> element
			para.id="listcpt["+rowCount+"].numligne";
			var t = document.createTextNode(rowCount + 1);       // Create a text node
			para.appendChild(t);                                          // Append the text to <p>
			cell1.appendChild(para);   
					 

            var cell2 = row.insertCell(2);
            
            var element1 = document.createElement("input");
            element1.type = "text";
            element1.style="display:inline-flex; width:86%; margin-right:5px;";
            element1.className="form-control";
            element1.placeholder="Numero de compte";
            element1.name="listcpt["+rowCount+"].nomcpt";
            cell2.appendChild(element1);

            var element2 = document.createElement("button");
            element2.type = "button";
            element2.style="width:10%";
            element2.className="btn bgm-lightgreen waves-effect";
            element2.icone="zmdi zmdi-menu";
            element2.name="add";
            

			var element= document.createElement("i");
			element.className="zmdi zmdi-menu";
			element2.appendChild(element);
			cell2.appendChild(element2);

            
          
            var cell3 = row.insertCell(3);
            var divselect= document.createElement("div");
            divselect.className="select";
            
            var element3 = document.createElement("select");
			element3.className=" select form-group fg-line  form-control";
            element3.name = "listcpt["+rowCount+"].rolecpt";


			var elOption = new Array(
                    new Option("Debit", "Debit", false, false),
                    new Option("Credit", "Credit", false, false)
                          );

			for (i=0;i<elOption.length;i++)
			{
				element3.options.add(elOption[i]);
			} 

			divselect.appendChild(element3);
            cell3.appendChild(divselect);


            
            var cell4 = row.insertCell(4);
            var element4 = document.createElement("input");
            element4.className="form-control input-mask";
            element4.placeholder="ex: 00,00%";
            element4.type = "text";
            element4.name = "listcpt["+rowCount+"].pourcentage";
            cell4.appendChild(element4);
           
        }

        function deleteRow() {
            try {
            var table = document.getElementById('tableAddguide');
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

            for(var i=1; i<rowCount; i++) {
    			
    			document.getElementById("tableAddguide").rows[i].cells[1].innerHTML = i;                                       // Append the text to <p>
    			
                } 
         //   var rowCount = table.rows.length-1;
	  	//	document.getElementById('nb_element').value= rowCount-1;

            
        }

        function rename()
        {
            

            }

    </SCRIPT>
    
    
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
					<div class="block-header">
						<h2>Saisie guide</h2>
					</div>
					
				<form  name="formguide" method="post">
					
					<div class="card">
						<div class="card-header">
						<h2>Ajout du nouveau guide <small>Creer les guides pour les operations comptable </small></h2>
						</div>
						
						<div class="card-body card-padding">
													
							<div class="form-group">
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Nom du guide :</h2>
								</div>
								<div class="fg-line">
									<input name="nameguide"  type="text" class="form-control input-lg" placeholder="guide facture" />
								</div>
							</div>
							
							<div class="form-group">
								<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Description du guide :</h2>
								</div>
								<div class="fg-line">
									<input name="descriptionguide"  type="text" class="form-control input-lg" placeholder="Description" />
								</div>
							</div>
							
							
							<div class="card-header" style="padding-left: 0px; padding-bottom:10px">
									<h2>Type du guide:</h2>
							</div>
							
							<div id="newChamp" style="width:100%">	
								<div class="fg-line" style="width:83%; margin-right:15px;">
									<div class="select">
										<select name="type_facture"  class="form-control">
										  <c:forEach items="${listtype}" var="list">
									        <option>
									       
									            <c:out value="${list.name}" />
									       </option>
									    </c:forEach>
								    
										</select>
									</div>
								</div>
								<button type="button" id="btnAdd" class="btn bgm-teal waves-effect" onclick="addChamp();"><i class="zmdi zmdi-plus zmdi-hc-fw"></i></button>	
							</div>	
													
							<div style="visibility: collapse;">
							<input type="text" id="nb_element" name="nb_element">1</input> 
							</div>
							<div class="card-header">
							<h2>Compte Debiteur :</h2>
							</div>
			
							<div class="table-responsive" style="padding-bottom:16px">
                            <table id="tableAddguide" class="table table-bordered">
                                <thead>
							
									<tr>
										<th data-column-id="check" data-type="checkbox" ></th>
										<th data-column-id="num" data-type="numeric" >N°</th>
										<th data-column-id="id" data-type="numeric">numero de compte</th>
										<th data-column-id="option">Debiteur/Crediteur</th>
										<th data-column-id="sender">Pourcentage %</th>
										
									</tr>
								</thead>
								<tbody >
									<tr>
									<td >
										<input type="checkbox" >
									</td>
									<td>
											<div class="fg-line">
												1
											</div>
									</td>
										
										
										<td>
											
											<div class="form-group" style="display:inline-flex; width:86%; margin-right:5px;">
												<div class="fg-line">
													<input type="text" class="form-control" name="listcpt[0].nomcpt" placeholder="Numero de compte" vk_1fb3d="subscribed">
												</div>
											</div>
											<button class="btn bgm-lightgreen waves-effect" style="width:10%"><i class="zmdi zmdi-menu"></i></button>
										
										</td>
										<td>
										<div class="form-group">
											<div class="fg-line">
												<div class="select">
													<select class="form-control" name="listcpt[0].rolecpt">
														<option>Debit</option>
														<option>Credit</option>
													</select>
												</div>
											</div>
										</div>
										
										</td>	
										<td>
										<div class="form-group">
											<div class="fg-line">
												<input type="text" name="listcpt[0].pourcentage" class="form-control input-mask" data-mask="00,00%" placeholder="ex: 00,00%" maxlength="9" autocomplete="off" vk_129f4="subscribed">
											</div>
										</div>
										</td>
									</tr>
								
								</tbody>
							</table>
							</br>
							
							</div>
								
						
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
						
						<li style="background-color: #333;">
							<div style="position: absolute;
									bottom: 16px;
									left: 205px;">
								<button type="button" style=" " class="btn bgm-lightblue btn-icon waves-effect waves-circle waves-float" onclick="deleteRow();"><i class="zmdi zmdi-plus zmdi-hc-fw"></i></button>
						
						</div>
						</li>
						<li>
							<p style="position: absolute;
									bottom: 7px;
									left: 250px;">Supprimer</p>
						</li>
							
						</ul>
					</div>
					<div style="position: absolute;
							bottom: 16px;
							right: 16px;">
						<button type="reset" class="btn btn-danger btn-lg waves-effect" onclick="document.forms.formguide.reset()"><i class="zmdi zmdi-undo zmdi-hc-fw"></i>Annuler</button>
						<button type="submit" name="addguide" class="btn bgm-green btn-lg waves-effect" style="align" id="sa-success"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i>Valider</button>
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
                swal("guide Ajoute!", "Le guide a ete ajoute a la base!", "success")
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


     

<!-- D�velloped by Juba Agoun on April 2016-->
</html>