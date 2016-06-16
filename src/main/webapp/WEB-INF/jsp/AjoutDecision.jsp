 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
< <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
</head>
<body>

!--Le header/toolbar la barre en haut qui contient les notification et les traitements gÃ©nÃ©raux  -->
<header id="header" class="clearfix" data-current-skin="blue">


    <ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar" class="">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>

        <li class="logo hidden-xs">
            <a href="">SystÃ¨me BudgÃ©taire et Comptable</a>
        </li>


        <li class="pull-right">
            <ul class="top-menu">

                <!--
                le toggle (activer ou desactiver le navigation drawer(sidebar))
                <li id="toggle-width">
                    <div class="toggle-switch">
                        <input id="tw-switch" type="checkbox" hidden="hidden">
                        <label for="tw-switch" class="ts-helper"></label>
                    </div>
                </li>

                -->


                <!--le bouton pour afficher la zone de recherche -->
                <li id="top-search">
                    <a href="#"><i class="tm-icon zmdi zmdi-search"></i></a>
                </li>


                <!-- dropdow(liste deroulante) pour les messages  -->
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#" aria-expanded="false">
                        <!--les classe tm-icon zmdi zmdi-email
                            font partie de la bibliotheque(fichier css)
                            ->material-design-iconic-font
                            chaque icone est dessine suivant une police(pas d'images mais que d'ecriture
                            -> plus de performance
                            )
                          -->
                        <i class="tm-icon zmdi zmdi-email"></i>
                        <!--la classe tmn-counts est une icone positionnÃ©e au dessus de l'icone prÃ©cedente
                        (par defaut elle en rouge) represente le nombre d'elements dans le menu
                        (ici le nombre de massages )
                         -->
                        <i class="tmn-counts">6</i>
                    </a>
                    <!--Le contenu de la liste dÃ©roulante -->
                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview">
                            <div class="lv-header">
                                Messages
                            </div>
                            <div class="lv-body">
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">David Belle</div>
                                            <small class="lv-small">Cum sociis natoque penatibus et magnis dis
                                                parturient montes
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Jonathan Morris</div>
                                            <small class="lv-small">Nunc quis diam diamurabitur at dolor elementum,
                                                dictum turpis vel
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Fredric Mitchell Jr.</div>
                                            <small class="lv-small">Phasellus a ante et est ornare accumsan at vel
                                                magnauis blandit turpis at augue ultricies
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Glenn Jecobs</div>
                                            <small class="lv-small">Ut vitae lacus sem ellentesque maximus, nunc sit
                                                amet varius dignissim, dui est consectetur neque
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Bill Phillips</div>
                                            <small class="lv-small">Proin laoreet commodo eros id faucibus. Donec ligula
                                                quam, imperdiet vel ante placerat
                                            </small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <a class="lv-footer" href="#">View All</a>
                        </div>
                    </div>
                </li>


                <!--la meme chose pour les notifications -->
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="tm-icon zmdi zmdi-notifications"></i>
                        <i class="tmn-counts">9</i>
                    </a>

                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview" id="notifications">
                            <div class="lv-header">
                                Notification

                                <ul class="actions">
                                    <li class="dropdown">
                                        <a href="#" data-clear="notification">
                                            <i class="zmdi zmdi-check-all"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="lv-body">
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">David Belle</div>
                                            <small class="lv-small">Cum sociis natoque penatibus et magnis dis
                                                parturient montes
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Jonathan Morris</div>
                                            <small class="lv-small">Nunc quis diam diamurabitur at dolor elementum,
                                                dictum turpis vel
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Fredric Mitchell Jr.</div>
                                            <small class="lv-small">Phasellus a ante et est ornare accumsan at vel
                                                magnauis blandit turpis at augue ultricies
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Glenn Jecobs</div>
                                            <small class="lv-small">Ut vitae lacus sem ellentesque maximus, nunc sit
                                                amet varius dignissim, dui est consectetur neque
                                            </small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="#">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Bill Phillips</div>
                                            <small class="lv-small">Proin laoreet commodo eros id faucibus. Donec ligula
                                                quam, imperdiet vel ante placerat
                                            </small>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <a class="lv-footer" href="#">View Previous</a>
                        </div>

                    </div>
                </li>


                <!--de meme pour les taches -->
                <li class="dropdown hidden-xs">
                    <a data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="tm-icon zmdi zmdi-view-list-alt"></i>
                        <i class="tmn-counts">2</i>
                    </a>

                    <div class="dropdown-menu pull-right dropdown-menu-lg">
                        <div class="listview">
                            <div class="lv-header">
                                Tasks
                            </div>
                            <div class="lv-body">
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">HTML5 Validation Report</div>

                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="95"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                            <span class="sr-only">95% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Google Chrome Extension</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                            <span class="sr-only">80% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Social Intranet Projects</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Bootstrap Admin Template</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Youtube Client App</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <a class="lv-footer" href="#">View All</a>
                        </div>
                    </div>
                </li>

                <!--et la configuration -->
                <li class="dropdown">
                    <a data-toggle="dropdown" href="#" aria-expanded="false"><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                    <ul class="dropdown-menu dm-icon pull-right">
                        <li class="skin-switch hidden-xs">
                            <span class="ss-skin bgm-lightblue" data-skin="lightblue"></span>
                            <span class="ss-skin bgm-bluegray" data-skin="bluegray"></span>
                            <span class="ss-skin bgm-cyan" data-skin="cyan"></span>
                            <span class="ss-skin bgm-teal" data-skin="teal"></span>
                            <span class="ss-skin bgm-orange" data-skin="orange"></span>
                            <span class="ss-skin bgm-blue" data-skin="blue"></span>
                        </li>
                        <li class="divider hidden-xs"></li>
                        <li class="hidden-xs">
                            <a data-action="fullscreen" href="#"><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>
                        </li>
                        <li>
                            <a data-action="clear-localstorage" href="#"><i class="zmdi zmdi-delete"></i> Clear Local
                                Storage</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-face"></i> Privacy Settings</a>
                        </li>
                        <li>
                            <a href="#"><i class="zmdi zmdi-settings"></i> Other Settings</a>
                        </li>
                    </ul>
                </li>

                <li class="hidden-xs" id="chat-trigger" data-trigger="#chat">
                    <a href="#"><i class="tm-icon zmdi zmdi-comment-alt-text"></i></a>
                </li>
            </ul>
        </li>
    </ul>


    <!-- Top Search Content -->
    <div id="top-search-wrap">
        <div class="tsw-inner">
            <i id="top-search-close" class="zmdi zmdi-arrow-left"></i>
            <input type="text">
        </div>
    </div>
</header>


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
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Dotation Initiale</a>

                        <ul>
                            <li><a href="index1.jsp">Ajouter Dotation</a></li>
                            <li><a href="index.jsp">Annuler dotation</a></li>
                            <li><a href="top-mainmenu.html">Mainmenu on top</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Dotation Supplémentaire</a>

                        <ul>
                           <li><a href="DotSupp.jsp">Ajouter Dotation supplémentaire</a></li>
                            <li><a href="NewFile.jsp">Annuler Dotation supplémentaire</a></li>
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
                            <li><a href="DotSupp.html">Dotations supplementaire</a></li>
                            <li><a class="active" href="Annul_Dotations.html">Annulation d'une dotation budgÃ©taire</a></li>
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

                <!--Les paramÃ¨tres -->
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
             
              
             





<div class="card compte-detail" style="">
                <!--L'entete de la page' -->
                
                
                <form:form method="POST"  commandName="aa">
                
                <div class="card-header">
                    <div class="row">
                       <div class="col-sm-9">
                            <h2>Dotations Initiales
                                <small>Affichage des dotations initiales</small>
                            </h2>
                            
                            <div class=""></div>
                            <button type="submit" class="btn btn-login compte-mod-save" style="" >Ajouter Dotation</button>
                             
                            
                       </div>
                       <div class="col-sm-3" dir="rtl">
                           <a href="index0.html" class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float compte-return-btn"><i class="zmdi zmdi-arrow-left"></i></a>
                       </div>
                     
                     </div>
                </div>
                
                
                
                <div class="card-contenu compte-detail">
                   <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                                  <div class="panel panel-collapse">
                                    <div class="panel-heading active" role="tab" id="headingOne">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">
                                                Section et Chapitre
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                   <form:label  path="section">Section:</form:label>
                                                   <form:input path="section" id="Section_dot1"  placeholder="Fonctionnement" class="form-control compte typeahead"></form:input>        
                                                </div>
                                                <div class="col-sm-4">
                                                     <form:label  path="chapitre">Chapitre:</form:label>
                                                    <form:input path="chapitre" id="Chapitre_dot1"  placeholder="IMPOT&TAXES" class="form-control compte"></form:input>        
                                                </div>
                                                <div class="col-sm-4">
                                                     <form:label  path="rubrique">Rubrique</form:label>
                                                    <form:input path="rubrique" id="Etat_dot1"  placeholder="Actif ou Annulée"  class="form-control compte"></form:input>        
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingTwo">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Dotation
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                        <div class="panel-body">
                                           <div class="row">
                                                <div class="col-sm-4">
                                                     <form:label  path="codeMonnais">CodeMonnais</form:label>
                                                    <form:input path="codeMonnais" id="Code_dot1" placeholder="6" class="form-control compte"></form:input>        
                                                </div>
												<div class="col-sm-4">
                                                     <form:label  path="montant">Montant</form:label>
                                                    <form:input path="montant" id="Montant_dot1" placeholder="6" class="form-control compte"></form:input>        
                                                </div>
                                            </div>
                                            
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                 <!--  <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Détails sur le Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Numero</label>
                                                    <input id="Numero_dot1" placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>Objet</label>
                                                    <input id="Objet_dot1" placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Date</label>
                                                    <input id="Date_dot1"  type="date" class="form-control compte"></input>        
                                                </div>
												
												<div class="col-sm-8">
                                                    <label>Observation</label>
                                                    <input id="Observation_dot1"  class="form-control compte"></input>        
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>-->  
                            </div> 
                </div>
				
				
				
				
				
			 
                

                </form:form>
                
            </div>


 </section>
</section>
            


<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="./js/waves.min.js"></script>
<script type="text/javascript" src="./js/typeahead.bundle.js"></script>
<script type="text/javascript" src="./js/sweetalert2.min.js"></script>
<!--Bibliothèque pour le sidebar -->
<script type="text/javascript" src="./js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="./js/jquery.bootgrid.updated.min.js"></script>
<script type="text/javascript" src="./js/functions.js"></script>







</body>
</html>