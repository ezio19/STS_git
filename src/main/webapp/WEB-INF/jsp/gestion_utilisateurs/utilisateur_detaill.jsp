<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card utilisateur-detail" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Fiche Compte
                    <small>Affichage des informations sur le compte</small>
                </h2>

                <div class=""></div>
                <button class="btn btn-login utilisateur-mod-save" style="display:none" >Enregistrer les Modifications</button>
                <button class="btn btn-login utilisateur-mod">Modifier</button>
                <button class="btn btn-login btn-warning ">Modifier le Mot de Passe</button>
                <button class="btn btn-login btn-danger utilisateur-suppr intern">Supprimer l'Utilisateur </button>




            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#" class="btn btn-login btn-danger btn-float waves-effect waves-circle <waves-float></waves-float> utilisateur-return-btn"><i class="zmdi zmdi-arrow-left"></i></a>
            </div>

        </div>
    </div>



    <div class="card-contenu utilisateur-detail">
        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">

            <div class="panel panel-collapse">
                <div class="panel-heading active" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">
                            Informations Personnelles
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Nom</label>
                                <input placeholder="6" class="form-control compte"></input>
                            </div>
                            <div class="col-sm-8">
                                <label>Prénom</label>
                                <input placeholder="6" class="form-control compte"></input>
                            </div>
                        </div>
                        <br/>
                    </div>
                </div>
            </div>
            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Coordonnées
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="collapse in" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Email</label>
                                <input placeholder="6" class="form-control compte"></input>
                            </div>

                            <div class="col-sm-8">
                                <label>Téléphone</label>
                                <input placeholder="6" class="form-control compte"></input>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <label>Addresse</label>
                                <input placeholder="Budgétaire" class="form-control compte"></input>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-collapse">
                <div class="panel-heading" role="tab" id="headingFour">
                    <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            Informations Professionnelles
                        </a>
                    </h4>
                </div>
                <div id="collapseFour" class="collapse in" role="tabpanel" aria-labelledby="headingFour">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <label>Id Utilisateur</label>
                                <input id="testspark" placeholder="6" class="form-control compte"></input>
                            </div>

                            <div class="col-sm-8">
                                <label>Code Structure</label>
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
                            Droits d'Accès
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="collapse in" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        <div class="row">

                            <div class="col-sm-4 m-b-20">
                                <div class="toggle-switch" data-ts-color="green">
                                    <label for="ts2" class="ts-label">Droit 1</label>
                                    <input id="ts2" type="checkbox" hidden="hidden">
                                    <label for="ts2" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-sm-4 m-b-20">
                                <div class="toggle-switch" data-ts-color="green">
                                    <label for="ts3" class="ts-label">Droit 2</label>
                                    <input id="ts3" type="checkbox" hidden="hidden">
                                    <label for="ts3" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-sm-4 m-b-20">
                                <div class="toggle-switch" data-ts-color="green">
                                    <label for="ts4" class="ts-label">Droit 3   </label>
                                    <input id="ts4" type="checkbox" hidden="hidden">
                                    <label for="ts4" class="ts-helper"></label>
                                </div>
                            </div>

                        </div>



                    </div>
                </div>
            </div>



        </div>
    </div>




</div>