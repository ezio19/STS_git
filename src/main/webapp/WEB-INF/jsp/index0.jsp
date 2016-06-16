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
    <link href="css/material-design-iconic-font/material-design-iconic-font.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    
    

    <title></title>
</head>
<body>

<!--Le header/toolbar la barre en haut qui contient les notification et les traitements généraux  -->
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
            <a href="">Système Budgétaire et Comptable</a>
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
                        <!--la classe tmn-counts est une icone positionnée au dessus de l'icone précedente
                        (par defaut elle en rouge) represente le nombre d'elements dans le menu
                        (ici le nombre de massages )
                         -->
                        <i class="tmn-counts">6</i>
                    </a>
                    <!--Le contenu de la liste déroulante -->
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

                <!--Les paramètres -->
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
                    <h2>Nomenclatures Budgétaires
                        <small>Affichage des nomenclatures Budgétaires.</small>
                    </h2>
                </div>
                <div class="card-contenu">
                    <div id="data-table-command-header" class="bootgrid-header container-fluid">
                        <div class="row">
                            <div class="form-inline">
                                <div class="col-sm-3">
                                    <input id="concatInput" class="form-control typeahead" type="text" placeholder="Concaténation">
                                </div>
                                <div class="col-sm-6 ">
                                    <div class="search form-group">
                                        <div class="input-group"><span class="zmdi icon input-group-addon glyphicon-search"></span> <input type="text" class="search-field form-control" placeholder="Recherche"></div>
                                    </div>
                                </div>
                            <div class="actions btn-group col-sm-offset-3">
                                <div class="dropdown btn-group">
                                    <button class="btn btn-default dropdown-toggle waves-effect" type="button" data-toggle="dropdown" aria-expanded="false"><span class="dropdown-text">10</span> <span class="caret"></span></button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li class="active" aria-selected="true"><a data-action="10" class="dropdown-item dropdown-item-button">10</a>
                                        </li>
                                        <li aria-selected="false"><a data-action="25" class="dropdown-item dropdown-item-button">25</a></li>
                                        <li aria-selected="false"><a data-action="50" class="dropdown-item dropdown-item-button">50</a></li>
                                        <li aria-selected="false"><a data-action="-1" class="dropdown-item dropdown-item-button">All</a></li>
                                    </ul>
                                </div>
                                <div class="dropdown btn-group">
                                    <button class="btn btn-default dropdown-toggle waves-effect" type="button" data-toggle="dropdown" aria-expanded="false"><span class="dropdown-text"><span class="zmdi icon zmdi-view-module"></span></span> <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li>
                                            <div class="checkbox"><label class="dropdown-item"><input name="id" type="checkbox" value="1" class="dropdown-item-checkbox" checked="checked">
                                                ID<i class="input-helper"></i></label></div>
                                        </li>
                                        <li>
                                            <div class="checkbox"><label class="dropdown-item"><input name="sender" type="checkbox" value="1" class="dropdown-item-checkbox" checked="checked">
                                                Sender<i class="input-helper"></i></label></div>
                                        </li>
                                        <li>
                                            <div class="checkbox"><label class="dropdown-item"><input name="received" type="checkbox" value="1" class="dropdown-item-checkbox" checked="checked">
                                                Received<i class="input-helper"></i></label></div>
                                        </li>
                                        <li>
                                            <div class="checkbox"><label class="dropdown-item"><input name="commands" type="checkbox" value="1" class="dropdown-item-checkbox" checked="checked">
                                                Commands<i class="input-helper"></i></label></div>
                                        </li>
                                    </ul>
                                </div>
                            </div></div>
                            
                        </div>
                        
                        
                        
                        <div class="row">
                            <div class="form-inline">
							  
							
							<div class="row">
								 
								 
								<div class="col-sm-6" >
								<label >Ajouter Dotation<label>
                                 <a class="btn btn-icon waves-effect waves-circle" href="formu.html">Ajouter Dotation>> </a>
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
							<button type="button" class="showingInfos btn btn-icon command-edit waves-effect waves-circle" data-row-id="${c.id}"><span class="zmdi zmdi-assignment"  ></span></button>
                            <button type="button"  class="editingInfors btn btn-icon command-edit waves-effect waves-circle" ><span class="zmdi zmdi-edit" data-row-id="${c.id}"></span></button>
                     
                            <button type="button" class="compte-suppr extern btn btn-icon command-delete waves-effect waves-circle" ><span class="zmdi zmdi-delete" data-row-id="${c.rubrique}"></span></button>
							 
							</td>	 
                        </tr>

  
                      </c:forEach>
                        
                          
                    </table>
                    
                    
                    
   
                    
                    
                    
                    
                    
                    
                    <!--le pied du tableau -->
                    <div id="data-table-command-footer" class="bootgrid-footer container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <ul class="pagination">
                                    <li class="first disabled" aria-disabled="true"><a data-page="first" class="button"><i class="zmdi zmdi-more-horiz"></i></a></li>
                                    <li class="prev disabled" aria-disabled="true"><a data-page="prev" class="button"><i class="zmdi zmdi-chevron-left"></i></a></li>
                                    <li class="page-1 active" aria-disabled="false" aria-selected="true"><a data-page="1" class="button">1</a>
                                    </li>
                                    <li class="page-2" aria-disabled="false" aria-selected="false"><a data-page="2" class="button">2</a>
                                    </li>
                                    <li class="next" aria-disabled="false"><a data-page="next" class="button"><i class="zmdi zmdi-chevron-right"></i></a></li>
                                    <li class="last" aria-disabled="false"><a data-page="last" class="button"><i class="zmdi zmdi-more-horiz"></i></a></li>
                                </ul>
                            </div>
                            <div class="col-sm-6 infoBar">
                                <div class="infos">affichage de 1 à 10 <des></des> 20 entrées</div>
                            </div>
                        </div>
                    </div>
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
                                                Informations de Compabilité
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Classe</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                <div class="col-sm-8">
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
                                                    <input placeholder="Budgétaire" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-collapse">
                                    <div class="panel-heading" role="tab" id="headingThree">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                Détails sur le Compte
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                        <div class="panel-body">
                                              <div class="row">
                                                <div class="col-sm-4">
                                                    <label>N° Compte</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-8">
                                                    <label>Désignation</label>
                                                    <input placeholder="6" class="form-control compte"></input>        
                                                </div>
                                            </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label>Type de Compte</label>
                                                    <input placeholder="Budgétaire" class="form-control compte"></input>        
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
                                                Détails sur la décision
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
												
												<div class="col-sm-4">
                                                    <label>Observation</label>
                                                    <input id="Observation_dot1"  class="form-control compte"></input>        
                                                </div>
                                                
                                                <div class="col-sm-4">
                                                 <div class="btn-group" role="group">
												    <input type="submit"/> 
												 </div> 
												   </div>     
                                            </div>
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


<!--Bibliothèque pour le sidebar -->
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
    var x=$(this.closest('tr')).attr('data-row-id');
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
   
   </script>
   

</body>

</html>