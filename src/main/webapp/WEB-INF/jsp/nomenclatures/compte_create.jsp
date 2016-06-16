<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card compte-create" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Fiche Compte
                    <small>Affichage des informations sur le compte</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login compte-create-submit">Créer le Compte
                </button>
                <button class="btn btn-login btn-danger compte-create_cancel">Annuler</button>


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
                <div class="panel-heading active" role="tab" id="headingOne1">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne1"
                           aria-expanded="true" aria-controls="collapseOne1" class="">
                            Informations de Compabilite
                        </a>
                    </h4>
                </div>
                <div id="collapseOne1" class="collapse in" role="tabpanel" aria-labelledby="headingOne1"
                     aria-expanded="true">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Classe</label>
                                <input id="creat_input_classe" placeholder="6" class="form-control compte">
                            </div>
                            <div class="col-sm-8">
                                <label>Nom</label>
                                <input id="creat_input_nom" placeholder="6" class="form-control compte">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                           href="#collapseTwo1" aria-expanded="false" aria-controls="collapseTwo1">
                            Affectation du Compte
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo1" class="collapse" role="tabpanel" aria-labelledby="headingTwo1">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Section</label>
                                <input id="creat_input_section" placeholder="Section" class="form-control compte">
                            </div>

                            <div class="col-sm-8">
                                <label>Chapitre</label>
                                <input id="creat_input_chapitre" placeholder="Chapitre" class="form-control compte">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Rubrique</label>
                                <input id="creat_input_rubrique" placeholder="Budgétaire" class="form-control compte">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingThree1">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                           href="#collapseThree1" aria-expanded="false" aria-controls="collapseThree1">
                            Détails sur le Compte
                        </a>
                    </h4>
                </div>
                <div id="collapseThree1" class="collapse" role="tabpanel" aria-labelledby="headingThree1">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>N= Compte</label>
                                <input id="creat_input_compte_num" placeholder="Numero compte" class="form-control compte">
                            </div>

                            <div class="col-sm-8">



                                <label>Désignation</label>
                                <input id="creat_input_designation" placeholder="Désignation" class="form-control compte">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Type de Compte</label>
                                <select id="creat_input_type" class="selectpicker">
                                    <option>Budgétaire</option>
                                    <option>Comptable</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>