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
                <th data-column-id="idUtilisateur" class="text-left" >Id Utilisateur</th>
                <th data-column-id="nom" class="text-left" >Nom</th>
                <th data-column-id="prenom" class="text-left" >Prénom</th>
                <th data-column-id="codeStrcuture" class="text-left" >Code Structure</th>
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commandes</th>
            </tr>
            </thead>
            <!--Les lignes du tableau -->
            <tbody>
            <c:if test="${listUtilisateurs.size() >0}">
                <c:forEach begin="0" end="${listUtilisateurs.size()-1}" varStatus="loop">
                    <tr data-row-id="${loop.index}" class="147">
                        <td class="text-left" style="">${listUtilisateurs.get(loop.index).getIdUtilisateur()}</td>
                        <td class="text-left" style="">${listUtilisateurs.get(loop.index).getNom()}</td>
                        <td class="text-left" style="">${listUtilisateurs.get(loop.index).getPrenom()}</td>
                        <td class="text-left" style="">${listUtilisateurs.get(loop.index).getStructure().getCodeStructure()}</td>
                    </tr>

                </c:forEach>
            </c:if>

            </tbody>



        </table>

    </div>


</div>