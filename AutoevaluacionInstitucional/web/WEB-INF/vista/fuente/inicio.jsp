<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span2"></div>
                <div class="span8">
                    <br/>
                    <h2>Listado de  Encuestas Disponibles</h2>
                    <br/>
                    <c:choose>
                        <c:when test="${listaEncuestasDisponibles.getRowCount()>0}">

                            <table class="table table-striped table-bordered table-condensed">
                                <thead>
                                <th>Encuesta</th>
                                <th>Programa</th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listaEncuestasDisponibles.rowsByIndex}" var="item" varStatus="iter">
                                        <tr>    
                                            <td>   
                                                <c:out value="${item[1]}"/>
                                            </td>
                                            <td>
                                                <c:out value="${proceso.programaId.nombre}"/>
                                            </td>
                                            <td class="action">
                                                <a title="Responder Encuesta" href="#responderEncuesta&${item[0]}">Responder encuesta</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:when>
                        <c:otherwise>
                            No Existen Encuestas Disponibles.
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="span2"></div>
            </div>
            <div  style="bottom: 25px" align="center" class="row-fluid">
                <hr class="soften"></hr>
                <%--    <img src="<%=request.getContextPath()%>/css/Captura.png" style="width: 224px; height: 80px"></img>--%>
                <a title="Autoevaluación Institucional" href="http://autoevaluacioninstitucional.unicartagena.edu.co/" target="_blank"><img src="<%=request.getContextPath()%>/css/selloAcreditacion.png"></img></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a title="Universidad de Cartagena" href="http://www.unicartagena.edu.co/" target="_blank"><img src="<%=request.getContextPath()%>/css/LogoUdeC.png" style="margin-left: 15px;"></img></a>
            </div>
        </div>
    </body>
</html>
