<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Utilisateurs
            <small>Affichage des Utilisateur.</small>
        </h2>
    </div>
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un nouveau utilisateur
            </button>
        </div>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table"
               aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th data-column-id="id"   >Id Utilisateur</th>
                <th data-column-id="actif" class="text-left" >Nom</th>
                <th data-column-id="designation" class="text-left" >Prénom</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
            </tr>
            </thead>
            <!--Les lignes du tableau -->
        </table>

    </div>


</div>