<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST"  commandName="aa">
   <table>
    <tr>
        <td><form:label path="numDecision">Numero Decision: </form:label></td>
        <td><form:input path="numDecision" /></td>
    </tr>
    <tr>
        <td><form:label path="section">Section:</form:label></td>
        <td><form:input path="section" /></td>
    </tr>
    <tr>
        <td><form:label path="chapitre">Chapitre</form:label></td>
        <td><form:input path="chapitre" /></td>
    <tr>
        <td><form:label path="rubrique">Rubrique:</form:label></td>
        <td><form:input path="rubrique" /></td>
    </tr>
    <tr>
        <td><form:label path="montant">Montant:</form:label></td>
        <td><form:input path="montant" /></td>
    </tr>
    <tr>
        <td><form:label path="codeMonnais">CodeMonnais:</form:label></td>
        <td><form:input path="codeMonnais" /></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
               <a href="Valider.html"> Ajouter les rubriques >> </a>
    
</table>
</form:form>

</body>
</html>