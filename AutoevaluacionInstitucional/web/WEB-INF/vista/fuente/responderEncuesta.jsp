<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.pagination.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.metadata.js"></script>
<script type="text/javascript">
    var itemsxpagina = 10;
    function pageselectCallback(page_index, jq) {
        var num_entries = $("#preguntas tr").length;
        for (var i = 0; i < num_entries; i++)
        {
            $('#preguntas tr:eq(' + i + ')').css("display", "none");
        }
        var max_elem = Math.min((page_index + 1) * itemsxpagina, num_entries);
        for (var i = page_index * itemsxpagina; i < max_elem; i++)
        {
            $('#preguntas tr:eq(' + i + ')').css("display", "table-row");

        }
        return false;
    }

    function initPagination() {
        // count entries inside the hidden content
        var num_entries = jQuery('#preguntas tr').length;

        // Create content inside pagination element
        $(".pagination").pagination(num_entries, {
            callback: pageselectCallback,
            items_per_page: itemsxpagina,
            num_display_entries: 4,
            num_edge_entries: 2,
            prev_text: "&larr; Anterior",
            next_text: "Siguiente &rarr;",
            prev_show_always: false,
            next_show_always: false
        });
    }
    $(document).ready(function() {
        initPagination();
    });

</script>

<script type="text/javascript">
    $(function() {
        var inst = $("#ins").val();
        inst = inst.replace(/\n/gi, "<br/>");

        $("#insp").append(inst);



        var validator = $("#formResponderE").bind("invalid-form.validate", function() {
            alert("usted ha dejado de contestar " + validator.numberOfInvalids() + " preguntas, por favor contestelas todas.");
        })
                .validate({
            ignore: "",
            submitHandler: function() {
                $.ajax({
                    type: 'POST',
                    url: "<%=request.getContextPath()%>/formController3?action=responderE",
                    data: $("#formResponderE").serialize(),
                    beforeSend: function() {
                        $("div.ui-layout-center").append("<div class='page_loading'>"
                                + "<span>Enviando</span>"
                                + "<img src='css/images/loading.gif' style='margin-left:6px;'>"
                                + "</div>");
                    },
                    success: function() {
                        $(".page_loading").hide();
                        $("#myModalGracias").modal();
                        $('#myModalGracias').on('hidden', function() {
                            location = "<%=request.getContextPath()%>/#inicio"
                        })

                    } //fin success
                }); //fin $.ajax    
            }
        });

        $("button[rel=popover1]")
                .popover({placement: 'left'})
                .click(function(e) {
            e.preventDefault();


            $(this).popover('hide');
            $(this).button('loading');

            $.ajax({
                type: 'POST',
                url: "<%=request.getContextPath()%>/formController3?action=guardarE",
                data: $("#formResponderE").serialize(),
                success: function() {
                    $("button[rel=popover1]").button('reset');
                    marcacion = new Date()
                    Hora = marcacion.getHours()
                    Minutos = marcacion.getMinutes()
                    Segundos = marcacion.getSeconds()
                    if (Hora <= 9)
                        Hora = "0" + Hora
                    if (Minutos <= 9)
                        Minutos = "0" + Minutos
                    if (Segundos <= 9)
                        Segundos = "0" + Segundos
                    var Dia = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");
                    var Mes = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
                    var Hoy = new Date();
                    var Anio = Hoy.getFullYear();
                    var Fecha = Dia[Hoy.getDay()] + " " + Hoy.getDate() + " de " + Mes[Hoy.getMonth()] + " de " + Anio + ", a las " + Hora + ":" + Minutos + ":" + Segundos;
                    $("#spanGuardado").show();
                    $("#hora2").html(" " + Fecha);
                } //fin success
            })

        });

        $("button[rel=popover2]")
                .popover({placement: 'left'});
    });
</script>
<style type="text/css">
    label.error{
        color:#B94A48;
    }
</style>
<div class="container">  
    <table class="table table-bordered table-striped" style="font-weight: bold;">
        <tbody>
            <tr>
                <td rowspan="3" style="width: 25%; text-align: center;"><img src="/AutoevaluacionInstitucional/css/LogoUdeC.png"></td>
                <td style="width: 50%; text-align: center;">UNIVERSIDAD DE CARTAGENA</td>
                <td style="width: 25%;">CÓDIGO: FO-DO/AA-002</td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: center;">AUTOEVALUACIÓN Y ACREDITACIÓN</td>
                <td>VERSIÓN:00</td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: center;">${encuesta.getNombre()}</td>
                <td>FECHA:18/04/2012</td>
            </tr>
        </tbody>
    </table>

    <div class="row">
        <div class="span12">
            <h3>Objetivo:</h3>
            <p style="text-align: justify;">${encuesta.getDescripcion()}</p>
        </div>

    </div>
    <div class="row">
        <div class="span12">
            <h3>Instrucciones:</h3>
            <textarea id="ins" style="display: none;" rows="9" class="span8">${encuesta.getInstrucciones()}</textarea>
            <p id="insp" style="text-align: justify;"></p>
        </div>
    </div>
    <c:set var="indice" value="1"></c:set>   
        <form id="formResponderE" method="POST">
        <c:forEach items="${encuesta.getPreguntaList()}" var="pregunta" varStatus="status">
            <c:choose>
                <c:when test="${pregunta.getTipo() == 'Elegir 1-5'}">
                    <div class="span10">
                        <p><b>${status.count} ${pregunta.getPregunta()}</b></p>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="5" class="{required:true}"/>5 Completamente deacuerdo</label>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="4" class="{required:true}"/>4 De acuerdo</label>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="3" class="{required:true}"/>3 Parcialmente de acuerdo</label>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="2" class="{required:true}"/>2 En desacuerdo</label>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="1" class="{required:true}"/>1 Completamente en desacuerdo</label>
                        <label class="radio"><input type="radio" name="pregunta${pregunta.getId()}" value="0" class="{required:true}"/>0 No sabe</label>
                    </div>
                </c:when>
                <c:when test="${pregunta.getTipo() == 'Matriz'}">
                    <div class="span10">
                        <p><b>${status.count} ${pregunta.getPregunta()}</b></p>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="span4"></th>
                                    <th class="span2" style="font-size: 12px">5</th>
                                    <th class="span2" style="font-size: 12px">4</th>
                                    <th class="span2" style="font-size: 12px">3</th>
                                    <th class="span2" style="font-size: 12px">2 </th>
                                    <th class="span2" style="font-size: 12px">1</th>
                                    <th class="span2" style="font-size: 12px">0</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${pregunta.getPreguntaList()}" var="sub" varStatus="subStatus">
                                    <tr>
                                        <td>${sub.getCodigo()} ${sub.getPregunta()}</td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="5" class="{required:true}"/></label></td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="4" class="{required:true}"/></label></td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="3" class="{required:true}"/></label></td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="2" class="{required:true}"/></label></td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="1" class="{required:true}"/></label></td>
                                        <td><label class="radio"><input type="radio" name="pregunta${sub.id}" value="0" class="{required:true}"/></label></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:when>
            </c:choose> 
        </c:forEach> 
        <div class="span12">
            <br/>
            <label>Observaciones y/o comentarios</label>
            <textarea rows="4" class="input-block-level"  placeholder="Observaciones y/o comentarios" name="comentario" maxlength="4999"></textarea>    
        </div>
        <div class="span12">
            <div style="text-align: right; margin-top: 22px;margin-bottom: 40px;">
                <!--<button class="btn" id="guardar" data-content="<p style='text-align: justify'>Guarda la encuesta sin salir de ella, de esta manera usted podr&aacute; seguir contestando la encuesta cuando desee.<p>" rel="popover1"  value="1" data-original-title="Guardar encuesta" type="button" data-loading-text="Guardando..." autocomplete="off">Guardar</button>-->
                <button class="btn btn-primary" data-content="<p style='text-align: justify'>Env&iacute;a la encuesta evaluada. Verifique que todas las preguntas han sido respondidas correctamente. Esta operación no se podrá deshacer.<p>" rel="popover2"  value="1" data-original-title="Enviar encuesta" type="submit">Enviar</button>
            </div>
        </div>
    </form>
</div>
