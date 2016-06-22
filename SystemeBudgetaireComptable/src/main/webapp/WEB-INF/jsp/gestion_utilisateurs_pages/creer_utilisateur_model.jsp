<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card utilisateur-detail" style="display: none">
    <div class="card-header">
        <h2>Compte Utilisateur
            <small>Affichage des comptes utilisateurs.</small>
        </h2>

        <div class="col-sm-9">

            <div class=""></div>
            <button class="btn btn-login compte-create-submit waves-effect">Créer l'Utilisateur
            </button>
            <button class="btn btn-login btn-danger compte-create_cancel waves-effect">Annuler</button>

        </div>

        <div class="col-sm-3" dir="rtl">
            <a href="#" class="btn btn-login btn-danger btn-float waves-effect waves-circle waves-float section-return-btn"><i class="zmdi zmdi-arrow-left"></i></a>
        </div>

    </div>




    <br/>

    <div class="card-contenu ">
        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">

            <div class="panel panel-collapse">
                <div class="panel-heading active" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                           aria-expanded="true" aria-controls="collapseOne" class="">
                            Informations Personnelles
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne"
                     aria-expanded="true">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Nom</label>
                                <input id="creat_input_nom" placeholder="6" class="form-control compte">
                            </div>
                            <div class="col-sm-8">
                                <label>Prénom</label>
                                <input id="creat_input_prenom" placeholder="6" class="form-control compte">
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
                                <label>Email</label>
                                <input  id="creat_input_email" placeholder="6" class="form-control compte">
                            </div>

                            <div class="col-sm-8">
                                <label>Téléphone</label>
                                <input id="creat_input_telephone" placeholder="6" class="form-control compte">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Addresse</label>
                                <input id="creat_input_addresse" placeholder="Budgétaire" class="form-control compte">
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
                                <label>Id Utilisateur</label>
                                <input id="id=creat_input_id_user" placeholder="6" class="form-control compte">
                            </div>

                            <div class="col-sm-8">
                                <label>Code Structure</label>
                                <input id="creat_input_code_structure" placeholder="6" class="form-control compte">
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
                            Droits d'Accès
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="collapse in" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">


                        <div class="row">

                            <div class="col-sm-4 m-b-20">
                                <br/>
                                <select class="selectpicker" title="Rubrique" id="rubrique-select-section"
                                        data-live-search="true">
                                </select>
                            </div>


                        </div>


                    </div>
                </div>
            </div>


        </div>
    </div>
</div>