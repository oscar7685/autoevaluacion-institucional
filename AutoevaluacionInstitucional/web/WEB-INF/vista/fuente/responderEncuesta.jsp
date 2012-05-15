<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.pagination.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.metadata.js"></script>
<script type="text/javascript">
    var itemsxpagina=45;
    function pageselectCallback(page_index, jq){
        var num_entries = $("#preguntas tr").length;
        for(var i=0;i<num_entries;i++)
        {
            $('#preguntas tr:eq('+i+')').css("display", "none");
        }
        var max_elem = Math.min((page_index+1) * itemsxpagina, num_entries);
        for(var i=page_index*itemsxpagina;i<max_elem;i++)
        {
            $('#preguntas tr:eq('+i+')').css("display", "table-row");
                     
        }  
        return false;
    }

    function initPagination() {
        // count entries inside the hidden content
        var num_entries = jQuery('#preguntas tr').length;
                
        // Create content inside pagination element
        $(".pagination").pagination(num_entries, {
            callback: pageselectCallback,
            items_per_page:itemsxpagina,
            num_display_entries:4,
            num_edge_entries:2,
            prev_text:"&larr; Anterior",
            next_text:"Siguiente &rarr;",
            prev_show_always:false,
            next_show_always:false
        });
    }
    $(document).ready(function(){
        initPagination();
    });

</script>

<script type="text/javascript">
    $(function(){
        var inst =$("#ins").val();  
        inst = inst.replace(/\n/gi,"<br/>");
        
        $("#insp").append(inst);
        
        
                $("#formResponderE").validate({
            submitHandler: function(){
                $.ajax({
                    type: 'POST', 
                url: "<%=request.getContextPath()%>/formController3?action=responderE",
                    data: $("#formResponderE").serialize(),
                    success: function(){
                        location = "<%=request.getContextPath()%>/#inicio"
                    } //fin success
                }); //fin $.ajax    
            }
        });
        

    });
</script>
<div class="container">  
    <table class="table table-bordered table-striped" style="font-weight: bold;">
        <tbody>
            <tr>
                <td rowspan="3" style="width: 25%; text-align: center;"><img style="width: 224px; height: 80px" src="/AutoevaluacionInstitucional/css/Sin título-3.png"></td>
                <td style="width: 50%; text-align: center;">UNIVERSIDAD DE CARTAGENA</td>
                <td style="width: 25%;">CÓDIGO: FO-DO/AA-002</td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: center;">AUTOEVALUACIÓN Y ACREDITACIÓN</td>
                <td>VERSIÓN:00</td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: center;">${encuesta.rowsByIndex[0][0]}</td>
                <td>FECHA:18/04/2012</td>
            </tr>
        </tbody>
    </table>

    <div class="row">
        <div class="span12">
            <h3>Objetivo:</h3>
            <p style="text-align: justify;">${encuesta.rowsByIndex[0][1]}</p>
        </div>

    </div>
    <div class="row">
        <div class="span12">
            <h3>Instrucciones:</h3>
            <textarea id="ins" style="display: none;" rows="9" class="span8">${encuesta.rowsByIndex[0][2]}</textarea>
            <p id="insp" style="text-align: justify;"></p>
        </div>
    </div>
    <form id="formResponderE" method="POST">
        <table id="preguntas" class="table table-striped table-condensed" style="width: 100%;">
            <tbody>


                <c:forEach items="${preguntas.rowsByIndex}" var="pregunta" varStatus="status">
                    <c:choose>
                        <c:when test="${pregunta[2] != 'Elegir 1-5'}">
                            <tr>
                                <td>${status.count}</td>   
                                <td><p>${pregunta[1]}</p></td>
                                <td>
                                    <select id="pregunta${pregunta[0]}" name="pregunta${pregunta[0]}" class="span1 {required:true}">
                                        <option></option>  
                                        <option value="Si">Si</option>  
                                        <option value="No">No</option>  
                                    </select>
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td>${status.count}</td>   
                                <td><p>${pregunta[1]}</p></td>
                                <td>
                                    <select id="pregunta${pregunta[0]}" name="pregunta${pregunta[0]}" class="span1 {required:true}">
                                        <option></option>  
                                        <option value="0">0</option>  
                                        <option value="1">1</option>  
                                        <option value="2">2</option>  
                                        <option value="3">3</option>  
                                        <option value="4">4</option>  
                                        <option value="5">5</option>  
                                    </select>
                                </td>
                            </tr>
                        </c:otherwise>    
                    </c:choose>
                </c:forEach>        
            </tbody>
        </table>
        <div class="row"> 
            <div class="span8">
                <div class="pagination"></div>
            </div>
            <div class="span4">
                <div style="text-align: right;margin-top: 18px;">
                    <button class="btn" type="reset">Guardar</button>
                    <button class="btn btn-primary" type="submit">Enviar</button>
                </div>
            </div>

        </div>
    </form>

</div>