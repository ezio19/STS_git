<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lan="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/material-design-iconic-font.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/malihu-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/sweetalert2.css" rel="stylesheet">
    <link href="css/jquery.bootgrid.min.css" rel="stylesheet">
    <link href="css/app.min.1.css" rel="stylesheet">
    <link href="css/app.min.2.css" rel="stylesheet">
    <title></title>
</head>
<body>
<!--Le header/toolbar la barre en haut qui contient les notification et les traitements generaux  -->
<c:import url="../header.jsp"></c:import>
<!--Le sidebar/navigation drawer (android) -->
<c:import url="../sidebar.jsp"></c:import>
<!-- L'interface principale -->


<section id="main">
    <!--Le contenu central -->
    <section id="content">
        <div class="container">

            <c:if test="${utilisateur!=null}">

            <div class="card section-create">
                <!--L'entete de la page' -->

                <div class="card-header">
                    <div class="row">
                        <div class="col-sm-9">
                            <h2>Fiche Utilisateur
                                <small>Affichage des informations sur l'Utilisateur</small>
                            </h2>

                            <div class=""></div>
                            <button class="btn btn-login compte-modif">Modifier l'Utilisateur</button>


                            <button class="btn btn-login compte-modif-enreg" style="display: none">Enregistrer les
                                modification
                            </button>


                        </div>
                        <div class="col-sm-3" dir="rtl">

                            <a href="gestion_utilisateurs_utilisateurs.html"
                               class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i
                                    class="zmdi zmdi-arrow-left"></i></a>
                        </div>


                    </div>
                </div>


                <div class="card-contenu ">
                    <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                       aria-expanded="false" aria-controls="collapseOne">
                                        Informations Personnelles
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_nom" placeholder="${utilisateur.getNom()}"
                                                       class="form-control compte" readonly>
                                            </div>
                                        </div>

                                        <div class="col-sm-8">
                                            <div class="fg-line">
                                                <input id="creat_input_prenom" placeholder="${utilisateur.getPrenom()}"
                                                       class="form-control compte" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                    <div id="pass_elem" class="row" style="display: none;">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_passw" placeholder="Mot de passe" type="password"
                                                       class="form-control compte">
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="fg-line">
                                                <input id="creat_input_reppasswd" placeholder="Repeter Mot de Passe"
                                                       type="password" class="form-control compte">
                                            </div>
                                        </div>
                                    </div>
                                    <br/>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                                       aria-expanded="false" aria-controls="collapseThree">
                                        Coordonnées
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_email" placeholder="${utilisateur.geteMail()} "
                                                       type="email" class="form-control compte" readonly>
                                            </div>
                                        </div>

                                        <div class="col-sm-8">
                                            <div class="fg-line">
                                                <input id="creat_input_telephone" placeholder="${utilisateur.getTel()}"
                                                       type="tel" class="form-control compte" readonly>
                                            </div>
                                        </div>
                                    </div>


                                    <br/>

                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_addresse"
                                                       placeholder="${utilisateur.getAdresse()}"
                                                       class="form-control compte" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-collapse">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        Informations Professionnelles
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="collapse in" role="tabpanel" aria-labelledby="headingFour">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="fg-line">
                                                <input id="creat_input_id_user" placeholder="${utilisateur.getId()}"
                                                       class="form-control compte" readonly>
                                            </div>
                                        </div>

                                        <div class="col-sm-8">
                                            <div class="fg-line">

                                                <div style="display: none" id="struct_sel">
                                                    <select class="selectpicker" id="structure-select-section"
                                                            data-live-search="true">
                                                        <option disabled>${utilisateur.getStructure().getCodeStructure()}</option>
                                                    </select>
                                                </div>

                                                <input id="struct_input" placeholder="${utilisateur.getStructure().getCodeStructure()}"
                                                       type="email" class="form-control compte" readonly>


                                            </div>
                                        </div>
                                    </div>

                                    <div class="row" style="display: none">

                                        <a href="gestion_utilisateurs_utilisateurs.html"
                                           class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i
                                                class="zmdi zmdi-arrow-left"></i></a>
                                    </div>


                                </div>
                            </div>


                            <div class="card-contenu ">
                                <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">


                                    <div class="panel panel-collapse">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                                                   href="#collapseTwo" aria-expanded="false"
                                                   aria-controls="collapseTwo">
                                                    Fonctionnalités
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="collapse in" role="tabpanel"
                                             aria-labelledby="headingTwo">
                                            <div class="panel-body">


                                                <div class="row">

                                                    <div class="col-sm-4 m-b-20">
                                                        <br/>
                                                        <select class="selectpicker" title="Fonctionnalites"
                                                                id="fonctionnlaite-select"
                                                                data-live-search="true" multiple>

                                                            <c:forEach begin="0"
                                                                       end="${utilisateur.getFoncts().size()-1}"
                                                                       varStatus="loop">
                                                                <option disabled>${utilisateur.getFoncts().get(loop.index).getDesignation()}</option>
                                                            </c:forEach>


                                                        </select>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        </c:if>

                    </div>
    </section>


</section>

<script type="text/javascript" src="js/promise.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.js"></script>

<script type="text/javascript" src="js/waves.min.js"></script>
<script type="text/javascript" src="js/typeahead.bundle.js"></script>
<script type="text/javascript" src="js/sweetalert2.min.js"></script>
<!--Bibliotheque pour le sidebar -->
<script type="text/javascript" src="js/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.js"></script>
<script type="text/javascript" src="js/jquery.bootgrid.updated.min.js"></script>
<script type="text/javascript" src="js/sugar.min.js"></script>
<script type="text/javascript" src="js/jquerymy-1.2.4.min.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/functions_gestion_utilisateurs_show.js"></script>

</body>

</html>