<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card chapitre-create" style="display:none">
    <!--L'entete de la page' -->

    <div class="card-header">
        <div class="row">
            <div class="col-sm-9">
                <h2>Creation d'un Chapitre
                    <small>Formulaire de création d'un chapitre</small>
                </h2>
                <br/>
                <button class="btn btn-login chapitre-create-submit">Créer le Chapitre
                </button>
                <button class="btn btn-login btn-danger chapitre-create_cancel">Annuler</button>


            </div>
            <div class="col-sm-3" dir="rtl">
                <a href="#"
                   class="btn  btn-danger btn-float waves-effect waves-circle waves-float section-return-btn chapitre-return"><i
                        class="zmdi zmdi-arrow-left"></i></a>
            </div>

        </div>
    </div>


    <div class="card-contenu compte-detail">
        <div class="panel-group p-l-20" role="tablist" aria-multiselectable="true">
            <div class="panel panel-collapse">
                <div class="panel-heading active" role="tab" id="headingOneChapitre">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOneChapitre"
                           aria-expanded="true" aria-controls="collapseOne1" class="">
                            Informations sur le Chapitre
                        </a>
                    </h4>
                </div>
                <div id="collapseOneChapitre" class="collapse in" role="tabpanel" aria-labelledby="headingOneChapitre"
                     aria-expanded="true">
                    <div class="panel-body">
                        <div id="chapitre_creation_form" class="row">
                            <div class="col-sm-4">
                                <div class="fg-line">
                                    <input id="creat_input_codeChapitre" placeholder="Code Chapitre " class="form-control chapitre">
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="fg-line">
                                    <input id="creat_input_designationChapitre" placeholder="Désignation " class="form-control chapitre">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>