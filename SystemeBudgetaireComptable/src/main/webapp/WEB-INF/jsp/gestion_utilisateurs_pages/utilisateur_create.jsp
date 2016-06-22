<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card section-create" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Fiche Utilisateur
                    <small>Affichage des informations sur l'Utilisateur</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login compte-create-submit">Créer l'Utilisateur
                </button>
                <button class="btn btn-login btn-danger compte-create_cancel">Annuler</button>


            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#"
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
                                <input id="creat_input_nom" placeholder="Nom" class="form-control compte">
                                </div>
                            </div>

                            <div class="col-sm-8">
                                <div class="fg-line">
                                <input id="creat_input_prenom" placeholder="Prenom" class="form-control compte">
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="fg-line">
                                <input id="creat_input_passw" placeholder="Mot de passe"  type="password" class="form-control compte">
                                    </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="fg-line">
                                <input id="creat_input_reppasswd" placeholder="Repeter Mot de Passe"  type="password" class="form-control compte">
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
                                <input  id="creat_input_email" placeholder="Email" type="email" class="form-control compte">
                                    </div>
                            </div>

                            <div class="col-sm-8">
                                <div class="fg-line">
                                <input id="creat_input_telephone" placeholder="Telephone" type="tel" class="form-control compte">
                                    </div>
                            </div>
                        </div>


                        <br/>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="fg-line">
                                <input id="creat_input_addresse" placeholder="Addresse" class="form-control compte">
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
                                <input id="creat_input_id_user" placeholder="Id Utilisateur" class="form-control compte">
                            </div>
                            </div>

                            <div class="col-sm-8">
                                <div class="fg-line">
                                    <select class="selectpicker" title="Code Strcuture" id="structure-select-section"
                                            data-live-search="true">
                                    </select>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <br/>
                        <div class="col-sm-4">
                            <div class="fg-line">
                                <select class="selectpicker" title="Etat" id="state-select">
                                    <option value="1">Actif</option>
                                    <option value="0">Inactif</option>
                                </select>
                            </div>
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
                            Fonctionnalités
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="collapse in" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">


                        <div class="row">

                            <div class="col-sm-4 m-b-20">
                                <br/>
                                <select class="selectpicker" title="Fonctionnalites" id="fonctionnlaite-select"
                                        data-live-search="true" multiple>
                                </select>
                            </div>

                        </div>


                    </div>
                </div>
            </div>


        </div>
    </div>
</div>