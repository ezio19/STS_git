<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card list-comptes">
    <!--L'entete de la page' -->
    <div class="card-header">
        <h2>Nomenclatures Budgétaires
            <small>Affichage des nomenclatures Budgétaires.</small>
        </h2>
    </div>
    <div class="card-contenu">
        <div class="m-sm-10 ">
            <button class="m-l-20 btn  btn-success  intern waves-effect compte-create">Ajouter un Nouveau Compte</button>
        </div>


        <!--Le tableau qui affiche la liste des comptes -->
        <table id="data-table-command" class="table table-striped table-vmiddle bootgrid-table" aria-busy="false">
            <!--l'entete du tableau' -->
            <thead>
            <tr>
                <th style="" class="text-left" data-column-id="id"><a href="javascript:void(0);"class="column-header-anchor sortable"><span class="text">Compte</span><span class="zmdi icon "></span></a></th>
                <th data-column-id="CompteLabel" class="text-left" style=""><a href="javascript:void(0);"class="column-header-anchor sortable"><span class="text">Libellé</span><span class="zmdi icon "></span></a></th>
                <th data-column-id="CompteType" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Type</span><span class="zmdi icon "></span></a></th>
                <th data-column-id="CompteDescription" class="text-left" style=""><a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">Description</span><span class="zmdi icon zmdi-expand-more"></span></a></th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
            </tr>
            </thead>

            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listComptes.size() >0}">
            <c:forEach begin="0" end="${listComptes.size()-1}" varStatus="loop">
                <tr data-row-id="${loop.index}">
                    <td class="text-left" style="">${listComptes.get(loop.index).getId()}</td>
                    <td class="text-left" style="">${listComptes.get(loop.index).getLibelle()}</td>
                    <td class="text-left" style="">${listComptes.get(loop.index).getType()}</td>
                    <td class="text-left" style="">${listComptes.get(loop.index).getDescription()}</td>

                </tr>

            </c:forEach>
            </c:if>

            </tbody>
        </table>

    </div>


</div>