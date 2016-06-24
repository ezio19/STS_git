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

            <c:if test="${chapitre!=null}">

                <div class="card section-create">
                    <!--L'entete de la page' -->

                    <div class="card-header">
                        <div class="row">
                            <div class="col-sm-9">
                                <h2>Fiche Chapitre
                                    <small>Affichage des informations sur le Chapitre</small>
                                </h2>

                                <div class=""></div>
                                <button class="btn btn-login compte-create-submit">Modifier le Chapitre</button>
                                <button class="btn btn-login compte-create-submit" style="display: none">Enregistrer les
                                    modification
                                </button>

                            </div>
                            <div class="col-sm-3" dir="rtl">
                                <a href="#"
                                   class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i
                                        class="zmdi zmdi-arrow-left"></i></a>
                            </div>


                        </div>
                    </div>


                    <div class="card-contenu compte-detail">
                        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-collapse">
                                <div class="panel-heading active" role="tab" id="headingOne1">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne1"
                                           aria-expanded="true" aria-controls="collapseOne1" class="">
                                            Informations sur le Chapitre
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne1" class="collapse in" role="tabpanel" aria-labelledby="headingOne1"
                                     aria-expanded="true">
                                    <div class="panel-body">
                                        <div id="section_creation_form" class="row">
                                            <div class="col-sm-4">
                                                <div class="fg-line">
                                                    <input id="creat_input_codechap" placeholder="${chapitre.getCodeChapitre()} "
                                                           class="form-control compte" readonly>
                                                </div>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="fg-line">
                                                    <input id="creat_input_designation" placeholder="${chapitre.getDesignation()}"
                                                           class="form-control compte" readonly>
                                                </div>
                                            </div>

                                            <div style="display: none" class="col-sm-8">
                                                <br/>
                                                <select class="selectpicker" title="Section" id="chapitre-select-section"
                                                        data-live-search="true">

                                                </select>
                                            </div>

                                            <div class="col-sm-8">
                                                <br/>
                                                <br/>
                                                <div class="fg-line">
                                                    <input id="code_section" placeholder="${chapitre.getSection().getCodeSection()}"
                                                           class="form-control compte" readonly>
                                                </div>
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
<script type="text/javascript" src="js/functions_chapitres.js"></script>

</body>

</html>



