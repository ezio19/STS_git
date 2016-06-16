<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Comptes Utilisateurs
            <small>Affichage des comptes utilisateurs.</small>
        </h2>
    </div>
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un nouveau
                Utilisateur
            </button>
        </div>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table"
               aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th style="" class="text-left" data-column-id="id">Id</th>
                <th data-column-id="CompteLabel" class="text-left" style="">Nom</th>
                <th data-column-id="CompteType" class="text-left" style="">Prénom</th>
                <th data-column-id="CompteDescription" class="text-left" style="">Email</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
            </tr>
            </thead>

            <!--Les lignes du tableau -->
            <tbody>
            <c:forEach begin="0" end="5" varStatus="loop">
                <tr data-row-id="${loop.index}">
                    <td class="text-left" style=""></td>
                    <td class="text-left" style=""></td>
                    <td class="text-left" style=""></td>
                    <td class="text-left" style=""></td>

                </tr>

            </c:forEach>
            </tbody>
        </table>

    </div>


</div>