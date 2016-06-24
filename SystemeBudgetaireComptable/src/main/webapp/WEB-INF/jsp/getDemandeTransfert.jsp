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
        <c:import url="header.jsp"></c:import>
        
        <section id="main">
            <c:import url="sidebar.jsp"></c:import>


            
            
            <form name="sauvegarder" method="post" style="visibility: collapse;">
			<input type="text" name="montant" id="montant"> </input>
			</form>
        
            <section id="content">
            <form action="RecepteurStructureInterne" name="f" method="post">
                <div class="container">
                    <div class="block-header">
                        <h2> Demande Transfert</h2>
                    
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
					
					
					
                
                                   

                             <div class="card">
					   <div class="card-header">
					      <h2>Numero DE LA DEMANDE</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.id}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                        	  </div>	
                        	   <div class="card">
                         <div class="card-header">
					      <h2>Numero DE LA RUBRIQUE</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.num_rubrique}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                         </div>
                          <div class="card">
                         <div class="card-header">
					      <h2>Montant DE LA DEMANDE</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.montant}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                          </div>
                          <div class="card">
                           <div class="card-header">
					      <h2>Code de la monnaie</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.code_monnaie}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                          </div>
                          <div class="card">
                        <div class="card-header">
					      <h2>Etat de la monnaie</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.etat}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                          </div>
                          <div class="card">
                         <div class="card-header">
					      <h2>Etat de la monnaie</h2>
						</div>
                        <div class="card-body card-padding">
                        <div class="form-group">
                                <div class="fg-line">
                                <c:forEach items="${demandeTransfert}" var="demande">
								<tr><div class="form-group fg-line">
								<td>${demande.date_demande}</td></tr>
								</c:forEach>
                                </div>
                        </div>
                        </div>
                       
                        </div>
							
					   
					 </div>
					
					       <div class="btn-demo">
                             <a class="btn btn-primary" href="RecepteurStructureInterne.html"> Voir Disponibilité </a>    
                            </div>
                      
 </div>
                        
   	</form>                     

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
        
     <script type="text/javascript">                 
   $('button.compte-show.extern').on('click',function(){
      //  selectedCompte=-1;
    //event.preventDefault();
   
 //   var x=$(this.closest('tr')).attr('data-row-id');
    
  	var num_demande= $(this.closest('tr')).find('td').eq(0).text();
    var num_rubrique= $(this.closest('tr')).find('td').eq(1).text();
  	var montant= $(this.closest('tr')).find('td').eq(2).text();
   	var code_monnaie= $(this.closest('tr')).find('td').eq(3).text();
   	var etat= $(this.closest('tr')).find('td').eq(4).text();
	var date_demande= $(this.closest('tr')).find('td').eq(5).text();

alert(num_demande);
alert(num_rubrique);
alert(montant);
alert(code_monnaie);
alert(etat);
alert(date_demande);
//	document.getElementById('montant').value=montant;

	$( "form:first" ).submit();
	


        //afficherSupprMessage(this.closest('tr'));
});
   
   </script>
    </body>

<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/form-components.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:34:11 GMT -->
</html>