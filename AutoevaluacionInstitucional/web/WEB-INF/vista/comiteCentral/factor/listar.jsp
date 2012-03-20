<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="hero-unit">
    <div class="row">
        <div class="span8">
            <br/>
            <h2>Listado de  Factores</h2>
            <c:choose>
                <c:when test="${listfactores.size() != 0}">

                    <table class="table table-striped table-bordered table-condensed">
                        <thead>
                        <th>Nombre</th>
                        <th>Descripci&oacute;n</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${listfactores}" var="row" varStatus="iter">
                                <tr>    
                                    <td>   
                                        <c:out value="${row.nombre}"/>
                                    </td>
                                    <td>
                                        <c:out value="${row.descripcion}"/>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    No Existen Factores Registrados en el Sistema.
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>    