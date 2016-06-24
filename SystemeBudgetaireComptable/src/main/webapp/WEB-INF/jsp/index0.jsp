<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lan="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    

    <title></title>
</head>
<body>

<!--Le header/toolbar la barre en haut qui contient les notification et les traitements g�n�raux  -->
<c:import url="./header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="./sidebar.jsp"></c:import>


<!-- L'interface principale -->
<section id="main">

    <!--Le sidebar/navigation drawer (android) -->
    <aside id="sidebar" class="sidebar c-overflow mCustomScrollbar _mCS_1 mCS-autoHide" style="overflow: visible;">
        <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0">
            <div id="mCSB_1_container" class="mCSB_container mCS_x_hidden mCS_no_scrollbar_x"
                 style="position: relative; top: 0px; left: 0px; width: 100%;" dir="ltr">
                <div class="profile-menu">
                    <a href="#">
                        <div class="profile-pic">
                            <img src="img/profile-pics/1.jpg" alt="" class="mCS_img_loaded">
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
                    <li class="sub-menu active toggled">
                        <a href="#"><i class="zmdi zmdi-view-list"></i> Tables</a>

                        <ul>
                            <li><a href="tables.html">Normal Tables</a></li>
                            <li><a class="active" href="data-tables.html">Data Tables</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
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
                            <li><a href="notification-dialog.html">Notifications &amp; Dialogs</a></li>
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
            </div>
        </div>
        <div id="mCSB_1_scrollbar_vertical"
             class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
             style="display: block;">
            <div class="mCSB_draggerContainer">
                <div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
                     style="position: absolute; min-height: 50px; display: block; height: 403px; max-height: 568px;"
                     oncontextmenu="return false;">
                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                </div>
                <div class="mCSB_draggerRail"></div>
            </div>
        </div>
        <div id="mCSB_1_scrollbar_horizontal"
             class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_horizontal"
             style="display: none;">
            <div class="mCSB_draggerContainer">
                <div id="mCSB_1_dragger_horizontal" class="mCSB_dragger"
                     style="position: absolute; min-width: 50px; width: 0px; left: 0px;" oncontextmenu="return false;">
                    <div class="mCSB_dragger_bar"></div>
                </div>
                <div class="mCSB_draggerRail"></div>
            </div>
        </div>
    </aside>

    <!--Le paneau de chat -->
    <!--
    <aside id="chat" class="sidebar c-overflow mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar" style="overflow: visible;"><div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y mCS_x_hidden mCS_no_scrollbar_x" style="position: relative; top: 0px; left: 0px; width: 100%;" dir="ltr">

        <div class="chat-search">
            <div class="fg-line">
                <input type="text" class="form-control" placeholder="Search People">
            </div>
        </div>

        <div class="listview">
            <a class="lv-item" href="#">
                <div class="media">
                    <div class="pull-left p-relative">
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/2.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/1.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/3.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/4.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/5.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/6.jpg" alt="">
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
                        <img class="lv-img-sm mCS_img_loaded" src="img/profile-pics/7.jpg" alt="">
                        <i class="chat-status-busy"></i>
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Teena Bell Ann</div>
                        <small class="lv-small">Busy</small>
                    </div>
                </div>
            </a>
        </div>
    </div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_horizontal" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_horizontal" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_horizontal" class="mCSB_dragger" style="position: absolute; min-width: 50px; width: 0px; left: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></aside>
    -->


    <!--Le contenu central -->
    <section id="content">
        <div class="container">

            <!--L'entete de la page' -->
            <div class="block-header">
                <h2></h2>

                <!--Les param�tres -->
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


            <!-- Le coeur de la page-->
            <!--la classe card dans ce template est l'equivalence
            du cardview d'android
             -->
             <!-- -->
            <div class="card list-comptes">
                <!--L'entete de la page' -->
                <div class="card-header">
                    <h2>Dotation Intiial
                        <small>Affichage des Dotation Initial.</small>
                    </h2>
                </div>
                <div class="card-contenu">
                    <div id="data-table-command-header" class="bootgrid-header container-fluid">
                        
                        
                        <div class="row">
                            <div class="form-inline">
							  
							
							<div class="row">
								 
								 
								<div class="col-sm-6" >
								
                                 <a  href="formu.html"><button class=" btn btn-login">Ajouter Dotation</button> </a>
								</div>
							 </div>
							  
							

                               
							</div>
                            
                        </div>
                        
                        
                        
                        
                        
                        
                    </div>
                    <!--Le tableau qui affiche la liste des comptes -->
                    <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
                        <!--l'entete du tableau' -->
                        
                        
                        
                        
                        <thead>
                        <tr>
                            <th style="" class="text-left" data-column-id="id"><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Section</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteLabel" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Chapitre</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteType" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Rubrique</span><span class="zmdi icon "></span></a></th>
                            <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Montant</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                             <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Code Monnaie</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                            
                            <th data-column-id="commands" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor "><span class="text">Commandes</span><span class="zmdi icon "></span></a></th>
                        </tr>
                        </thead>
                        
                        <!--Les ligne du tableau -->
                         
                       <c:forEach items="${liste}" var="c" varStatus="statut">
                            <tr data-row-id="${statut.count}">
                            <td id="Section" class="text-left" style=""> ${c.section}</td> 
                            <td id="Chapitre" class="text-left" style="">${c.chapitre}</td>
                            <td id="Rubrique" class="text-left" style="">${c.rubrique}</td>
                            <td id="Montant" class="text-left" style="">${c.montant}</td>
                            <td id="Monnaie" class="text-left" style=""> ${c.codeMonnais}</td>
							<td class="text-left" style="">
                            <button type="button"  class="editingInfors2 btn btn-icon command-edit waves-effect waves-circle" ><span class="zmdi zmdi-edit" data-row-id="${c.id}"></span></button>

                            <button type="button" class="compte-suppr extern btn btn-icon command-delete waves-effect waves-circle" ><span class="zmdi zmdi-delete" data-row-id="${c.rubrique}"></span></button>
							 
							</td>	 
                        </tr>

  
                      </c:forEach>
                        
                          
                    </table>
                    
                    
                    
   
                    
                    
                    
                    
                    
                    
                    <!--le pied du tableau -->
                     	
                </div>
                

                
                
            </div>
            
             <div class="card compte-detail" style="display:none">
                <!--L'entete de la page' -->
                
                <div class="card-header">
                    <div class="row">
                       <div class="col-sm-9">
                            <h2>Fiche Compte
                                <small>Affichage des informations sur le compte</small>
                            </h2>
                            
                            <div class=""></div>
                            <button class="btn btn-login compte-mod-save" style="display:none" >Enregistrer les Modifications</button>
                            <button class="btn btn-login compte-mod">Modifier</button>
                            <button class="btn btn-login btn-danger compte-suppr intern">Supprimer le Compte</button>
                            
                            
                       </div>
                       <div class="col-sm-3" dir="rtl">
                           <a href="#" class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float compte-return-btn"><i class="zmdi zmdi-arrow-left"></i></a>
                       </div>
                    
                </div>
                </div>
                
                
                
                <div class="card-contenu compte-detail">
                   <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                                <div class="panel panel-collapse">
                                    <div class="panel-heading active" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">
                                                Informations de Compabilit�
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <label>Classe</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                <div class="col-sm-3">
                                                      <label>Nom</label>
                                                      <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Affectation du Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                           <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Section</label>
                                                    <input id="testspark" placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>Chapitre</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Rubrique</label>
                                                    <input placeholder="Budg�taire" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                D�tails sur le Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-4">
                                                    <label>N� Compte</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>D�signation</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Type de Compte</label>
                                                    <input placeholder="Budg�taire" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                </div>
                

                
                
            </div>
            
              <form:form class="form-inline" id="form1">
				 <div class="panel panel-collapse"> 
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                D�tails sur la d�cision
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-3">
                                                    <label>Numero</label>
                                                    <input id="Numero_dot1" placeholder="6" class="form-control compte" required="required" pattern="[0-9]{1,}"></input>        
                                                </div>
                                                
                                                <div class="col-sm-3">
                                                    <label>Objet</label>
                                                    <input id="Objet_dot1" placeholder="6" class="form-control compte" required="required" pattern="[a-zA-Z]*+[ ]*" ></input>        
                                                </div>
                                                
                                                <div class="col-sm-3">
                                                    <label>Date</label>
                                                    <input id="Date_dot1"  type="date" class="form-control compte" required="required"></input>        
                                                </div>
												
												<div class="col-sm-3">
                                                    <label>Observation</label>
                                                    <input id="Observation_dot1"  class="form-control compte" required="required" pattern="[a-zA-Z]*+[ ]*"></input>        
                                                </div>
                                            </div>
                                             <br/>
                                             <br/>
                                            
                                            
             
        <!--  <sec:authorize access="hasRole('RES_DOTA')"> -->
            <button type="submit" value="Valider" class="btn btn-login btn-danger " onclick="window.location='AfficherDecisionIntiale.html';" > Valider</button>
		<!-- </sec:authorize> -->						 
												    
                                        </div>
                                    </div>
                                </div>
				 
				</form:form>
            
            
            
    </section>
</section>


<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/waves.min.js"></script>
<script type="text/javascript" src="./js/typeahead.bundle.js"></script>
<script type="text/javascript" src="./js/sweetalert2.min.js"></script>


<!--Biblioth�que pour le sidebar -->
<script type="text/javascript" src="./js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

<script type="text/javascript" src="./js/functions.js"></script>

<script type="text/javascript">
    $("#form1").submit(function(event){	
	event.preventDefault();
		
		var	num		 =$('#Numero_dot1').val();
		var	objet		 =$('#Objet_dot1').val();
		var	date		 =$('#Date_dot1').val();
		var	obs		 =$('#Observation_dot1').val();
		var json = {"date":date,"numDecision":num,"objet":objet,"observation":obs};
		$.ajax({
			url: '<spring:url value="searchA.json"/>'/*$('#JsonPostForm').action*/,
			type: 'POST',
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(json),
			success: function(data) {
				console.log( "success recup JSON" );
				/*var html = '<option value="">--Please select one--</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].desc + '">'
							+ data[i].desc + '</option>';
				}
				html += '</option>';
				
				$('#resultActivities').html(html);*/
			}
		});
	});

</script>


<script type="text/javascript">                 
   $('button.compte-suppr.extern').on('click',function(){
      //  selectedCompte=-1;
    //event.preventDefault();
    //alert("mchaat");
    //var x=$(this.closest('tr')).attr('data-row-id');
  	var section= $(this.closest('tr')).find('td').eq(0).text();
  	var chapitre= $(this.closest('tr')).find('td').eq(1).text();
   	var rubrique= $(this.closest('tr')).find('td').eq(2).text();
   	var montant= $(this.closest('tr')).find('td').eq(3).text();
   	var codeMonnaie= $(this.closest('tr')).find('td').eq(4).text();


    
  	/*var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();*/
	var json = {"section":section,"chapitre":chapitre,"rubrique":rubrique,"montant":montant,"codeMonnais":codeMonnaie};
	$.ajax({
		url: '<spring:url value="searchSupp.json"/>'/*$('#JsonPostForm').action*/,
		type: 'POST',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(json),
		success: function(data) {
			console.log( "success recup JSON" );
			/*var html = '<option value="">--Please select one--</option>';
			var len = data.length;
			for (var i = 0; i < len; i++) {
				html += '<option value="' + data[i].desc + '">'
						+ data[i].desc + '</option>';
			}
			html += '</option>';
			
			$('#resultActivities').html(html);*/
		}
	});
        this.closest('tr').remove();

        //afficherSupprMessage(this.closest('tr'));
});
   
   
   $('button.editingInfors1').on('click',function(){
      //  selectedCompte=-1;
    //event.preventDefault();
    //alert("mchaat");
    //var x=$(this.closest('tr')).attr('data-row-id');
      	alert("rahi fe loel ");

  	var section= $(this.closest('tr')).find('td').eq(0).text();
  	var chapitre= $(this.closest('tr')).find('td').eq(1).text();
   	var rubrique= $(this.closest('tr')).find('td').eq(2).text();
   	var montant= $(this.closest('tr')).find('td').eq(3).text();
   	var codeMonnaie= $(this.closest('tr')).find('td').eq(4).text();


    
  	/*var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();
  	var section= $(this.closest('tr')).eq(0).val();*/
	var json = {"section":section,"chapitre":chapitre,"rubrique":rubrique,"montant":montant,"codeMonnais":codeMonnaie};
	$.ajax({
		url: '<spring:url value="searchModif.json"/>'/*$('#JsonPostForm').action*/,
		type: 'POST',
		dataType: 'json',
		contentType: 'application/json',
		data: JSON.stringify(json),
		success: function(data) {
			console.log( "success recup JSON" );
			/*var html = '<option value="">--Please select one--</option>';
			var len = data.length;
			for (var i = 0; i < len; i++) {
				html += '<option value="' + data[i].desc + '">'
						+ data[i].desc + '</option>';
			}
			html += '</option>';
			
			$('#resultActivities').html(html);*/
		}
	});
        this.closest('tr').remove();

        //afficherSupprMessage(this.closest('tr'));
});
   
   
   </script>
   

</body>

</html>