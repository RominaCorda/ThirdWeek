<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="headerAdmin.jsp" />

<img id ="underNav" src="/gommastore/css/img/listapneu.jpg">

<div class="page-body">

    <div class="container">

        <table class="table table-striped" >
            <thead>
                <tr>
                    <th>Modello</th>
                    <th>Produttore</th>
                    <th>Prezzo</th>
                    <th>Tipo di veicolo</th>
                </tr>
            </thead>
            <c:forEach items="${listgomme}" var="gomma">
            <tbody>
                <tr>
                    <td>${gomma.model}</td>
                    <td>${gomma.manufacturer}</td>
                    <td>${gomma.price}</td>
                    <td>${gomma.typeVehicle}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<jsp:include page="footer.jsp" />