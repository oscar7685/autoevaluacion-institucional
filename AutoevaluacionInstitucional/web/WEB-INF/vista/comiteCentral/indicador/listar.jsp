<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
    var itemsxpagina=14;
    function pageselectCallback(page_index, jq){
        var num_entries = $("#indicadores tr").length;
        for(var i=0;i<num_entries;i++)
        {
            $('#indicadores tr:eq('+i+')').css("display", "none");
        }
        var max_elem = Math.min((page_index+1) * itemsxpagina, num_entries);
        for(var i=page_index*itemsxpagina;i<max_elem;i++)
        {
            $('#indicadores tr:eq('+i+')').css("display", "table-row");
                     
        }  
        return false;
    }

    function initPagination() {
        // count entries inside the hidden content
        var num_entries = jQuery('#indicadores tr').length;
                
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
        var actual = "";
        $("a.delete").click(function(e){
            e.preventDefault();
            actual = $(this).attr("id"); 
            $('#myModalElimI').modal();
            
        })
    })
</script> 
<div class="hero-unit">
    <div class="row">
        <div class="span10">
            <br/>
            <h2>Listado de  Indicadores</h2>
            <c:choose>
                <c:when test="${fn:length(listindicadores)!= 0}">
                    <table id="indicadores" class="table table-striped table-bordered table-condensed">
                        <thead>
                        <th>Codigo</th>
                        <th>Indicador</th>
                        <th></th>
                        </thead>
                        <tbody>
                            <c:forEach items="${listindicadores}" var="row" varStatus="iter">
                                <tr>    
                                    <td>   
                                        <c:out value="${row.codigo}"/>
                                    </td>
                                    <td>   
                                        <c:out value="${row.nombre}"/>
                                    </td>
                                    <td class="action icon16">
                                        <a title="Editar" href="#editarIndicador&${row.id}" class="edit"></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    No Existen Indicadores Registrados en el Sistema.
                </c:otherwise>
            </c:choose>
                    
              <div class="pagination"></div>       
        </div>
    </div>
</div>    
