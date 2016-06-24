<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Comptes Budgétaires
            <small>Affichage des Comptes Budgétaires.</small>
        </h2>
    </div>
        <sec:authorize access="hasAnyAuthority('ROLE_NOMENCLATEUR', 'ROLE_ADMIN')">
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter un Nouveau Compte Budgétaire
            </button>
        </div>
        </sec:authorize>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>

                <th data-column-id="id" data-identifier="true" data-type="numeric">Id</th>
                <th style="" class="text-left" data-column-id="concat">Concaténation</th>
                <th data-column-id="designation" class="text-left" style="">Désignation</th>
                <th data-column-id="nume" class="text-left" style="">Numéro</th>
                <th data-column-id="type_cpt" class="text-left" style="">Type</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>



            </tr>
            </thead>

            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listComptesBudgetaires.size()>0}">
            <c:forEach begin="0" end="${listComptesBudgetaires.size()-1}" varStatus="loop">
                <tr data-row-id="${loop.index}">
                    <td class="text-left" style="">${loop.index+1}</td>
                    <td class="text-left " style="">${listComptesBudgetaires.get(loop.index).getConcatenation()}</td>
                    <td class="text-left" style="">${listComptesBudgetaires.get(loop.index).getLibelleCompte()}</td>
                    <td class="text-left" style="">${listComptesBudgetaires.get(loop.index).getNumCompte()}</td>
                    <td class="text-left" style="">${listComptesBudgetaires.get(loop.index).getTypeCompte()}</td>
                </tr>
            </c:forEach>
            </c:if>
            </tbody>
        </table>

    </div>


</div>