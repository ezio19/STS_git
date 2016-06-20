<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    
<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:29:20 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Acceuil</title>

        <!-- Vendor CSS -->
        <link href="vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
        <link href="vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
        <link href="vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
        <link href="vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
        <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">        
            
        <!-- CSS -->
        <link href="css/app.min.1.css" rel="stylesheet">
        <link href="css/app.min.2.css" rel="stylesheet">
        
    </head>
    <body>
        <c:import url="/WEB-INF/jsp/header.jsp"></c:import>
        <c:import url="WEB-INF/jsp/sidebar.jsp"></c:import>





        <section id="main" data-layout="layout-1">
            <section id="content">
                <div class="container">
                    
                   
                    <div class="mini-charts">
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-cyan">
                                    <div class="clearfix">
                                        <div class="chart stats-bar"></div>
                                        <div class="count">
                                            <small>Somme Budget</small>
                                            <h2>98 Millions</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-lightgreen">
                                    <div class="clearfix">
                                        <div class="chart stats-bar-2"></div>
                                        <div class="count">
                                            <small>Nombre de transacions </small>
                                            <h2>67.867</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-orange">
                                    <div class="clearfix">
                                        <div class="chart stats-line"></div>
                                        <div class="count">
                                            <small>Opérations budgétaires</small>
                                            <h2>23.555</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6 col-md-3">
                                <div class="mini-charts-item bgm-bluegray">
                                    <div class="clearfix">
                                        <div class="chart stats-line-2"></div>
                                        <div class="count">
                                            <small>Opérations Comptables</small>
                                            <h2>44.312</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="dash-widgets">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div id="site-visits" class="dash-widget-item bgm-teal">
                                    <div class="dash-widget-header">
                                        <div class="p-20">
                                            <div class="dash-widget-visits"></div>
                                        </div>
                                        
                                        <div class="dash-widget-title">Statistique du mois précedent</div>
                                        
                                    </div>
                                    
                                    <div class="p-20">
                                        
                                        <small>Nombre de transacions </small>
                                        <h3 class="m-0 f-400">20.764</h3>
                                        
                                        <br/>
                                        
                                        <small>Opérations budgétaires</small>
                                        <h3 class="m-0 f-400">6.799</h3>
                                        
                                        <br/>
                                        
                                        <small>Opérations comptables</small>
                                        <h3 class="m-0 f-400">13.965</h3>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-3 col-sm-6">
                                <div id="pie-charts" class="dash-widget-item">
                                    <div class="bgm-pink">
                                        <div class="dash-widget-header">
                                            <div class="dash-widget-title">Indicateurs des objectifs</div>
                                        </div>
                                        
                                        <div class="clearfix"></div>
                                        
                                        <div class="text-center p-20 m-t-25">
                                            <div class="easy-pie main-pie" data-percent="80">
                                                <div class="percent">80</div>
                                                <div class="pie-title">Ratios des transactions</div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="p-t-20 p-b-20 text-center">
                                        <div class="easy-pie sub-pie-1" data-percent="56">
                                            <div class="percent">56</div>
                                            <div class="pie-title">Opérations comptables</div>
                                        </div>
                                        <div class="easy-pie sub-pie-2" data-percent="84">
                                            <div class="percent">84</div>
                                            <div class="pie-title">Opérations budgétaires</div>
                                        </div>
                                    </div>
    
                                </div>
                            </div>
                            <div class="col-sm-6">
                            <!-- Calendar -->
                            <div id="calendar-widget"></div>

                            <!-- Recent Posts -->
                       </div>
                    
                            
    
                       </div>
                    </div>
                    
                    <div class="row">
                        
                                                       <!-- Chart flow -->
                             
                            <div class="card">
                                <div class="card-header">
                                    <h2>Répartition du budget</h2>
                                    
                                  </div>
                                
                                <div class="card-body card-padding">
                                    <div id="pie-chart" class="flot-chart-pie" style="padding: 0px; position: relative;">
                                    	<canvas class="flot-base" width="444" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 444px; height: 300px;"></canvas>
                                    	<canvas class="flot-overlay" width="444" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 444px; height: 300px;"></canvas>
                                    </div>
                                    <div class="flc-pie hidden-xs">
                                    	<table style="font-size:smaller;color:#545454">
                                    		<tbody>
                                    			<tr>
                                    				<td class="legendColorBox">
                                    				<div style="border:1px solid #ccc;padding:1px">
                                    					<div style="width:4px;height:0;border:5px solid #F44336;overflow:hidden"></div>
                                    				</div>
                                    				</td>
                                    				<td class="legendLabel">Travaux de refonte</td>
                                    				<td class="legendColorBox">
                                    					<div style="border:1px solid #ccc;padding:1px">
                                    						<div style="width:4px;height:0;border:5px solid #03A9F4;overflow:hidden"></div>
                                    					</div>
                                    				</td>
                                    				<td class="legendLabel">Construction</td>
                                    				<td class="legendColorBox">
                                    					<div style="border:1px solid #ccc;padding:1px">
                                    						<div style="width:4px;height:0;border:5px solid #8BC34A;overflow:hidden"></div>
                                    					</div>
                                    				</td>
                                    				<td class="legendLabel">Maintenace</td>
                                    				<td class="legendColorBox">
	                                    				<div style="border:1px solid #ccc;padding:1px">
	                                    					<div style="width:4px;height:0;border:5px solid #FFEB3B;overflow:hidden"></div>
	                                    				</div>
                                    				</td>
                                    				<td class="legendLabel"></td>
                                    					<td class="legendColorBox">
                                    						<div style="border:1px solid #ccc;padding:1px">
                                    							<div style="width:4px;height:0;border:5px solid #009688;overflow:hidden"></div>
                                    						</div>
                                    					</td>
                                    					<td class="legendLabel">Soutraitence</td>
                                    			</tr>
                                    		</tbody>
                                    	</table>
                                    </div>
                                </div>
                            </div>
                                                  
                           
                            
                            <!-- Todo Lists -->
                            <div id="todo-lists">
                                <div class="tl-header">
                                    <h2>Pense Bête</h2>
                                    <small>Ajouter, Modifier et gérer votre liste des tâches a faire</small>
                                    
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>
                                            
                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li>
                                                    <a href="#">Refresh</a>
                                                </li>
                                                
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                    
                                <div class="clearfix"></div>
                                    
                                <div class="tl-body">
                                    <div id="add-tl-item">
                                        <i class="add-new-item zmdi zmdi-plus"></i>
                                        
                                        <div class="add-tl-body">
                                            <textarea placeholder="Saisir la tâche"></textarea>
                                            
                                            <div class="add-tl-actions">
                                                <a href="#" data-tl-action="dismiss"><i class="zmdi zmdi-close"></i></a>
                                                <a href="#" data-tl-action="save"><i class="zmdi zmdi-check"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    
                                                             
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Supprimer</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Archiver les dossiers validés</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Supprimer</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Reprendre les dossiers </span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Supprimer</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Consulter le DSI sur la nouvellle reglementation</span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Supprimer</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Replanifier les date des operations comptables de la rabrique des constructions </span>
                                            </label>
                                        </div>
                                    </div>
                                    
                                    <div class="checkbox media">
                                        <div class="pull-right">
                                            <ul class="actions actions-alt">
                                                <li class="dropdown">
                                                    <a href="#" data-toggle="dropdown">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li><a href="#">Supprimer</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="media-body">
                                            <label>
                                                <input type="checkbox">
                                                <i class="input-helper"></i>
                                                <span>Modifier le nom d'utilisateur </span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                        
                    </div>
                </div>
            </section>
        </section>
        
        <footer id="footer">
            Copyright &copy; IFA 2016
            
            <ul class="f-menu">
                <li><a href="#">Acceuil</a></li>
               
            </ul>
        </footer>

        <!-- Page Loader -->
        <div class="page-loader">
            <div class="preloader pls-blue">
                <svg class="pl-circular" viewBox="25 25 50 50">
                    <circle class="plc-path" cx="50" cy="50" r="20" />
                </svg>

                <p>Chargement ...</p>
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
        
        <script src="vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="vendors/sparklines/jquery.sparkline.min.js"></script>
        <script src="vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        
        <script src="vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
        <script src="vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
        <script src="vendors/bower_components/Waves/dist/waves.min.js"></script>
        
        
        <script src="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="vendors/bower_components/flot-orderBars/js/jquery.flot.orderBars.js"></script>
        <script src="vendors/bower_components/flot/jquery.flot.pie.js"></script>
        <!-- Placeholder for IE9 -->
        <!--[if IE 9 ]>
            <script src="vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
        <![endif]-->
        
        <script src="js/flot-charts/curved-line-chart.js"></script>
        <script src="js/flot-charts/line-chart.js"></script>
        <script src="js/flot-charts/bar-chart.js"></script>
        <script src="js/flot-charts/pie-chart.js"></script>
        <script src="js/charts.js"></script>
        <script src="js/functions.js"></script>
        <script src="js/demo.js"></script>

        
    </body>
  
<!-- Mirrored from byrushan.com/projects/ma/1-5-2/jquery/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 09 Feb 2016 04:30:41 GMT -->
</html>