<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style type="text/css">

    .inicial td {
        text-align: right;
    }
</style>



<script type="text/javascript">
    $(document).ready(function() {
    $('.tool').tooltip().click(function(e){
    $(this).tooltip('hide');
    })
    }); <c:choose>
        <c:when test="${detalleIndicador.getRowCount()!= 0}">
    $(function () {
    var chart;
            var chart2 = new Array(${detalleIndicador.getRowCount()});
            var indicad = "${detalleIndicador.getRowsByIndex()[0][5]}".split(" ");
            var max2 = 70;
            var acom2 = 0;
            var finali2 = "";
            for (var i = 0; i < indicad.length; i++){
    acom2 += indicad[i].length;
            if (acom2 < max2){
    finali2 += indicad[i] + " ";
    } else{
    acom2 = 0;
            finali2 += "<br/>" + indicad[i] + " ";
    }
    }
            <c:forEach items="${detalleIndicador.rowsByIndex}" var="pregunta" varStatus="status" >
    chart2[${status.index}] = new Highcharts.Chart({
    chart: {
    renderTo: 'container${pregunta[6]}',
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false

    },
            credits: {
            enabled: false
            },
            title: {
            text: null
            },
            subtitle: {
            text: '${pregunta[10]} ${pregunta[8]}'
                        },
                        plotOptions: {
                        pie: {
                        allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                enabled: true,
                                        color: '#000000',
                                        connectorColor: '#000000',
                                        formatter: function() {
                                        var igv = this.percentage;
                                                igv = igv.toFixed(2);
                                                return '<b>' + this.point.name + '</b>: ' + igv + ' %';
                                        }
                                }
                        }
                        },
                        tooltip: {
                        formatter: function() {
                        return '' +
                                this.point.name + ': ' + this.y + ' personas';
                        }
                        },
                        series: [{
                        type: 'pie',
                                name: 'Personas',
                                data: [
                                        ['0', ${pregunta[12]}],
                                        ['1', ${pregunta[13]}],
                                        ['2', ${pregunta[14]}],
                                        ['3', ${pregunta[15]}],
                                        ['4', ${pregunta[16]}],
                                {
                                name: '5',
                                        y: ${pregunta[17]},
                                        sliced: true,
                                        selected: true },
                                ]
                        }]


                }); </c:forEach>

                chart = new Highcharts.Chart({
                chart: {
                renderTo: 'grafica',
                        type: 'column',
                        margin: [ 50, 30, 100, 50]
                },
                        credits: {
                        enabled: false
                        },
                        title: {
                        text: "" + finali2 + ""
                        },
                        xAxis: {
                        categories: [
            <c:forEach items="${detalleIndicador.rowsByIndex}" var="detalleI" varStatus="status">
                <c:choose>
                    <c:when test="${detalleIndicador.getRowCount()!=status.index+1}">
                        '${detalleI[7]}-${detalleI[10]} ${detalleI[8]}', </c:when>
                    <c:otherwise>
                                    '${detalleI[7]}-${detalleI[10]} ${detalleI[8]}'
                    </c:otherwise>
                </c:choose>

            </c:forEach>
                                                ],
                                                        labels: {
                                                        formatter: function() {
                                                        var partes = this.value.split("-");
                                                                return "" + partes[0];
                                                        },
                                                                rotation: - 45,
                                                                align: 'right',
                                                                style: {
                                                                fontSize: '12px',
                                                                        fontFamily: 'Verdana, sans-serif'
                                                                }
                                                        }
                                                },
                                                plotOptions: {
                                                series: {
                                                cursor: 'pointer',
                                                        point: {
                                                        events: {
                                                        click: function() {
                                                        var partes2 = this.category.split("-");
                                                                var a = $("a[data='" + partes2[1] + "']");
                                                                location = a.attr("href");
                                                        }
                                                        }
                                                        }
                                                }
                                                },
                                                yAxis: {
                                                min: 0,
                                                        max: 5,
                                                        title: {
                                                        text: 'Grado de cumplimiento'
                                                        }
                                                },
                                                legend: {
                                                enabled: false
                                                },
                                                tooltip: {
                                                formatter: function() {
                                                var pregunta = this.x.split(" ");
                                                        var max = 50;
                                                        var acom = 0;
                                                        var finali = "";
                                                        for (var i = 0; i < pregunta.length; i++){
                                                acom += pregunta[i].length;
                                                        if (acom < max){
                                                finali += pregunta[i] + " ";
                                                } else{
                                                acom = 0;
                                                        finali += "</b><br/><b>" + pregunta[i] + " ";
                                                }

                                                }

                                                return '<b>' + finali + '</b><br/>' +
                                                        'Cumplimiento: ' + Highcharts.numberFormat(this.y, 2) +
                                                        '';
                                                }
                                                },
                                                series: [{
                                                name: 'Preguntas',
                                                        data: [
            <c:forEach items="${detalleIndicador.rowsByIndex}" var="detalleI2" varStatus="status33">
                <c:choose>
                    <c:when test="${detalleIndicador.getRowCount()!=status33.index+1}">
                        <c:choose>
                            <c:when test="${detalleI2[11]>=4.5}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#89A54E'
                                                        }, </c:when>
                            <c:when test="${detalleI2[11]<4.5 && detalleI2[11]>=4.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#80699B'
                                                        }, </c:when>
                            <c:when test="${detalleI2[11]<4.0 && detalleI2[11]>=3.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#3D96AE'
                                                        }, </c:when>
                            <c:when test="${detalleI2[11]<3.0 && detalleI2[11]>=2.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#DB843D'
                                                        }, </c:when>
                            <c:otherwise>
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#AA4643'
                                                        }, </c:otherwise>
                        </c:choose>






                    </c:when>
                    <c:otherwise>
                        <c:choose>
                            <c:when test="${detalleI2[11]>=4.5}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#89A54E'
                                                        }

                            </c:when>
                            <c:when test="${detalleI2[11]<4.5 && detalleI2[11]>=4.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#80699B'
                                                        }

                            </c:when>
                            <c:when test="${detalleI2[11]<4.0 && detalleI2[11]>=3.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#3D96AE'
                                                        }

                            </c:when>
                            <c:when test="${detalleI2[11]<3.0 && detalleI2[11]>=2.0}">
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#DB843D'
                                                        }

                            </c:when>
                            <c:otherwise>
                                                        {
                                                        y: ${detalleI2[11]},
                                                                color: '#AA4643'
                                                        }
                            </c:otherwise>
                        </c:choose>





                    </c:otherwise>
                </c:choose>

            </c:forEach>


                                                        ],
                                                        dataLabels: {
                                                        enabled: true,
                                                                rotation: - 90,
                                                                color: '#FFFFFF',
                                                                align: 'right',
                                                                x: - 3,
                                                                y: 10,
                                                                formatter: function() {
                                                                return this.y;
                                                                },
                                                                style: {
                                                                fontSize: '13px',
                                                                        fontFamily: 'Verdana, sans-serif'
                                                                }
                                                        }
                                                }]
                                        });
                                        });
        </c:when>
    </c:choose>
</script>
<div class="hero-unit">
    <div class="row">
        <div id="conte" class="span10">
            <div class="btn-group offset7">
                <a class="btn" href="#detalleIndicador&${detalleIndicador.rowsByIndex[0][4]}">Todo</a>
                <a class="btn active" style="cursor:default;">S&oacute;lo percepci&oacute;n</a>
            </div>
            <legend>Indicador: ${detalleIndicador.rowsByIndex[0][5]}</legend>
            <ul class="breadcrumb">
                <li><a href="<%=request.getContextPath()%>/#informeMatrizFactoresP">Matriz de Calidad de Factores</a> <span class="divider">/</span></li>
                <li><a href="<%=request.getContextPath()%>/#informeMatrizP">Matriz de Calidad de Características</a> <span class="divider">/</span></li>
                <li><a class="tool" data-placement="top" rel="tooltip" data-original-title="${detalleIndicador.rowsByIndex[0][1]}" href="#detallePFactor&${detalleIndicador.rowsByIndex[0][0]}">Factor ${detalleIndicador.rowsByIndex[0][0]}</a> <span class="divider">/</span></li>
                <li><a class="tool" data-placement="top" rel="tooltip" data-original-title="${detalleIndicador.rowsByIndex[0][3]}"  href="#detallePCaracteristica&${detalleIndicador.rowsByIndex[0][2]}">Característica ${detalleIndicador.rowsByIndex[0][2]}</a><span class="divider">/</span></li>
                <li class="active tool" data-placement="top" rel="tooltip" data-original-title="${detalleIndicador.rowsByIndex[0][5]}">Indicador ${detalleIndicador.rowsByIndex[0][4]}</li>
            </ul>
            <br>
            <c:choose>
                <c:when test="${detalleIndicador.getRowCount()!= 0}">
                    <h3>Instrumento: Encuesta</h3>
                    <table class="table table-striped table-bordered table-condensed">
                        <thead>
                        <th>C&oacute;digo</th>
                        <th>Pregunta</th>
                        <th>Promedio respuesta</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${detalleIndicador.rowsByIndex}" var="row" varStatus="iter">
                                <tr>
                                    <td style="text-align: left">   
                                        <c:out value="${row[7]}"/>
                                    </td>
                                    <td style="text-align: left">
                                        <c:choose>
                                            <c:when test="${row[9]== 'item'}">
                                                <a href="#detallePregunta&${row[6]}" >${row[10]} ${row[8]}</a> 
                                            </c:when>
                                            <c:otherwise>
                                                <a href="#detallePregunta&${row[6]}" >${row[8]}</a> 
                                            </c:otherwise>   
                                        </c:choose>

                                    </td>
                                    <td>
                                        <div class="btn-group pull-right">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                                ${row[11]}
                                            </a>
                                            <ul class="dropdown-menu" style="padding-top: 0px;">
                                                <div id="container${row[6]}" style="min-width: 850px; height: 400px; margin: 0 auto"></div>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <br/>
                    <div id="grafica" style="min-width: 400px; height: 500px; margin: 0 auto"></div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Escala</th>
                                <th>Descripci&oacute;n</th>
                                <th>Grado de cumplimiento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="background-color: #89A54E;">
                                <td>
                                    4.5 a 5.0
                                </td>
                                <td>
                                    Se cumple plenamente
                                </td>
                                <td>
                                    90% a 100%
                                </td>
                            </tr>
                            <tr style="background-color: #80699B;">
                                <td>
                                    4.0 a 4.4
                                </td>
                                <td>
                                    Se cumple en alto grado
                                </td>
                                <td>
                                    80% a 89%
                                </td>
                            </tr>
                            <tr style="background-color: #3D96AE;">
                                <td>
                                    3.0 a 3.9
                                </td>
                                <td>
                                    Se cumple en mediano grado
                                </td>
                                <td>
                                    60% a 79%
                                </td>
                            </tr>
                            <tr style="background-color: #DB843D;">
                                <td>
                                    2.0 a 2.9
                                </td>
                                <td>
                                    Se cumple en bajo grado
                                </td>
                                <td>
                                    40% - 59%
                                </td>
                            </tr>
                            <tr style="background-color: #AA4643;">
                                <td>
                                    1.0 a 1.9
                                </td>
                                <td>
                                    No se cumple
                                </td>
                                <td>
                                    0% - 39%
                                </td>
                            </tr>

                        </tbody>
                    </table>
                    <div id="container"></div>
                </c:when>
            </c:choose>
        </div>
    </div>
</div>    
