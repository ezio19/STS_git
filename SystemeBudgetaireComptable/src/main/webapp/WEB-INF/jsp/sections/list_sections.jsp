<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="card list-sections">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Sections
            <small>Affichage des sections .</small>
        </h2>
    </div>
    <div class="card-contenu">

        <sec:authorize access="hasAnyAuthority('ROLE_NOMENCLATEUR', 'ROLE_ADMIN')">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect section-create">Ajouter une Nouvelle section</button>
        </div>
        </sec:authorize>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th data-column-id="id" data-identifier="true" data-type="numeric">Id</th>
                <th style="" class="text-left" data-column-id="code_sect">Code Section</th>
                <th data-column-id="CompteLabel" class="text-left" style="">Désignation</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
            </tr>
            </thead>

            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listSections.size() >0}">
                <c:forEach begin="0" end="${listSections.size()-1}" varStatus="loop">
                    <tr data-row-id="${loop.index}" >
                        <td class="text-left" style="">${loop.index+1}</td>
                        <td class="text-left" style="">${listSections.get(loop.index).getCodeSection()}</td>
                        <td class="text-left" style="">${listSections.get(loop.index).getDesignation()}</td>

                    </tr>

                </c:forEach>
            </c:if>

            </tbody>
        </table>

    </div>


</div>