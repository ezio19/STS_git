<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Chapitres
            <small>Affichage des Chapitres.</small>
        </h2>
    </div>
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un nouveau
                Chapitre
            </button>
        </div>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table"
               aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th data-column-id="id" data-identifier="true" data-type="numeric">Id</th>
                <th data-column-id="code_chapitre"   >Code Chapitre</th>
                <th data-column-id="CompteLabel" class="text-left" >Désignation</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
            </tr>
            </thead>

            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listChapitres.size()>0}">
            <c:forEach begin="0" end="${listChapitres.size()-1}" varStatus="loop">
                <tr data-row-id="${loop.index}">
                    <td class="text-left" style="">${loop.index+1}</td>
                    <td class="text-left " style="">${listChapitres.get(loop.index).getCodeChapitre()}</td>
                    <td class="text-left" style="">${listChapitres.get(loop.index).getDesignation()}</td>
                </tr>

            </c:forEach>
            </c:if>
            </tbody>
        </table>

    </div>


</div>