<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <aside id="sidebar" class="sidebar c-overflow mCustomScrollbar _mCS_1 mCS-autoHide" style="overflow: visible;">
        <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0">
            <div id="mCSB_1_container" class="mCSB_container mCS_x_hidden mCS_no_scrollbar_x"
                 style="position: relative; top: 0px; left: 0px; width: 100%;" dir="ltr">
                <div class="profile-menu">
                    <a href="#">
                        <div class="profile-pic">
                            <img src="" alt="" class="mCS_img_loaded">
                        </div>

                        <div class="profile-info">
                            Utilisateur Comptable

                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                    </a>

                    <ul class="main-menu">
                        <li>
                            <a href=""><i class="zmdi zmdi-account"></i> View Profile</a>
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
                    <li ><a href=""><i class="zmdi zmdi-home"></i> Acceuil</a></li>

                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-home"></i> Gestion des Utilisateurs</a>
                        <ul>
                            <li><a href="gestion_utilisateurs_utilisateurs.html"><i class="zmdi zmdi-face zmdi-hc-fw "></i> Utilisateurs</a></li>
                            <li><a href="gestion_utilisateurs_fonctionnalites.html"><i class="zmdi zmdi-lamp zmdi-hc-fw"></i> Fonctionnalites</a></li>
                        </ul>
                    </li>

                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Nomenclatures</a>
                        <ul>
                            <li><a href="nomenclatures_strcutures.html"><i class="zmdi  zmdi-city "></i> Structures</a></li>
                            <li><a href="nomenclatures_sections.html"><i class="zmdi zmdi-view-carousel zmdi-hc-fw"></i> Sections</a></li>
                            <li><a href="nomenclatures_chapitres.html"><i class="zmdi zmdi-view-day zmdi-hc-fw"></i> Chapitres</a></li>
                            <li><a href="nomenclatures_rubriques.html"><i class="zmdi zmdi-view-list-alt zmdi-hc-fw"></i> Rubriques</a></li>
                            <li><a href="nomenclatures_comptables.html"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Nomenclatures Comptables</a></li>
                            <li><a href="nomenclatures_budgetaires.html"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Comptes Budgetaires</a></li>
                        </ul>
                    </li>


                    <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-mail-send zmdi-hc-fw"></i> Transfert</a>
                        <ul>
                            <li ><a href="addDemandeTransfertInterne.html"><i class="zmdi zmdi-city-alt zmdi-hc-fw"></i> Demande Transfert Interne</a></li>
                            <li ><a href="addDemandeTransfertExterne.html"><i class="zmdi zmdi-truck zmdi-hc-fw"></i> Demande Transfert Externe</a></li>
                        </ul>
                    </li>


                <li><a href="engagement_ajouter.html"><i class="zmdi zmdi-home"></i> Ajouter Engagement</a></li>
                
                 <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Guides</a>
                        <ul>
	                        <sec:authorize access="hasAuthority('ROLE_USER')">
	                            <li ><a href="AllGuides.html"><i class="zmdi zmdi-city-alt zmdi-hc-fw"></i>Liste des guides</a></li>
	                        </sec:authorize> 
                            <sec:authorize access="hasAnyAuthority('ROLE_USER')">
                            	<li ><a href="NewGuide.html"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>Ajouter un guide</a></li>
                        	</sec:authorize>
                        </ul>
                   </li>
                   
                   <li class="sub-menu">
                        <a href="#"><i class="zmdi zmdi-view-compact"></i> Opérations</a>
                        <ul>
	                        <sec:authorize access="hasAnyAuthority('ROLE_CREER_OPERATION_BUDGETAIRE', 'ROLE_ADMIN')">
	                            <li ><a href="opbudg.html"><i class="zmdi zmdi-city-alt zmdi-hc-fw"></i>Opérations Budgétaires</a></li>
	                        </sec:authorize> 
                            <sec:authorize access="hasAnyAuthority('ROLE_CREER_OPERATION_COMPTABLE', 'ROLE_ADMIN')">
                            	<li ><a href="opcompt.html"><i class="zmdi zmdi-truck zmdi-hc-fw"></i>Opérations Comptables</a></li>
                        	</sec:authorize>
                        </ul>
                   </li>
                   
                   <li><a href="logout.html"><i class="zmdi"></i> Déconnexion</a></li>

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
