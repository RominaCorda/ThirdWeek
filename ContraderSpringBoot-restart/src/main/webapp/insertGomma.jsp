<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="headerAdmin.jsp" />

<c:if test="${msg!=null}">
    <div id="msg" class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
            ${msg}
    </div>
</c:if>

<img id ="underNav" src="/gommastore/css/img/inseriscipneu.jpg">

 <div class="page-body">
        <c:url var="url" value="/gomme/insertGomme" />
        <form action="${url}" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3" >
                    </div>
                    <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">
                        <div class="form-group">
                            <label for="model">Modello</label>
                            <input type="text" class="form-control" name="model" id="model" placeholder="Inserisci modello" required>

                            <label for="manufacturer">Produttore</label>
                            <input type="text" class="form-control" name="manufacturer" id="manufacturer" placeholder="Inserisci produttore" required>

                            <label for="price">Prezzo</label>
                            <input type="text" class="form-control" name="price" id="price" placeholder="Inserisci prezzo" required>

                            <label for="typeVehicle">Tipo veicolo</label>
                            <select class="form-control" id="typeVehicle" name="typeVehicle" required>
                                <option value="auto">auto</option>
                                <option value="moto">moto</option>
                                <option value="commerciale">commerciale</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-default">Inserisci</button>
                    </div>


                    <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3" >
                    </div>
                </div>
            </div>
        </form>
 </div>
<jsp:include page="footer.jsp" />
</html>
