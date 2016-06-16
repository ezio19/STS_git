<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card compte-detail" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Fiche Compte
                    <small>Affichage des informations sur le compte</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login compte-mod-save" style="display:none">Enregistrer les
                    Modifications
                </button>
                <button class="btn btn-login compte-mod">Modifier</button>
                <button class="btn btn-login btn-danger compte-suppr intern">Supprimer le Compte</button>


            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#"
                   class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float compte-return-btn"><i
                        class="zmdi zmdi-arrow-left"></i></a>
            </div>

        </div>
    </div>


    <div class="card-contenu compte-detail">
        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
            <div class="panel panel-collapse">
                <div class="panel-heading active" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                           aria-expanded="true" aria-controls="collapseOne" class="">
                            Informations de Compabilité
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne"
                     aria-expanded="true">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Classe</label>
                                <input  id="edit_input_classes" placeholder="6" class="form-control compte">
                            </div>
                            <div class="col-sm-8">
                                <label>Nom</label>
                                <input id="edit_input_nom" placeholder="6" class="form-control compte">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                           href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Affectation du Compte
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Section</label>
                                <input id="edit_input_section" placeholder="6" class="form-control compte">
                            </div>

                            <div class="col-sm-8">
                                <label>Chapitre</label>
                                <input id="edit_input_chapitre" placeholder="6" class="form-control compte">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Rubrique</label>
                                <input id="edit_input_rubrique" placeholder="Budgétaire" class="form-control compte"></input>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                           href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Détails sur le Compte
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>N= Compte</label>
                                <input id="edit_input_num" placeholder="6" class="form-control compte">
                            </div>

                            <div class="col-sm-8">
                                <label>Désignation</label>
                                <input id="edit_input_designation" placeholder="6" class="form-control compte">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Type de Compte</label>
                                <input id="edit_input_type" placeholder="Budgétaire" class="form-control compte">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>