<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/script/jquery-1.9.1.min.js"></script>
<script>
    //como hay 2 versiones de JQuery declaradas las separamos con jQuery.noConflict()
    var jQuery191 = jQuery.noConflict();
    jQuery191.fn.editableTableWidget = function(options) {
        'use strict';
        return jQuery191(this).each(function() {
            var buildDefaultOptions = function() {
                var opts = jQuery191.extend({}, jQuery191.fn.editableTableWidget.defaultOptions);
                opts.editor = opts.editor.clone();
                return opts;
            },
                    activeOptions = jQuery191.extend(buildDefaultOptions(), options),
                    ARROW_LEFT = 37, ARROW_UP = 38, ARROW_RIGHT = 39, ARROW_DOWN = 40, ENTER = 13, ESC = 27, TAB = 9,
                    element = jQuery191(this),
                    editor = activeOptions.editor.css('position', 'absolute').hide().appendTo(element.parent()),
                    active,
                    showEditor = function(select) {
                        active = element.find('td:focus');
                        if (active.length && !active.is(':first-child')) {
                            editor.val(active.text())
                                    .removeClass('error')
                                    .show()
                                    .offset(active.offset())
                                    .css(active.css(activeOptions.cloneProperties))
                                    .width(active.width())
                                    .height(active.height())
                                    .focus();
                            if (select) {
                                editor.select();
                            }
                        }
                    },
                    setActiveText = function() {
                        var text = editor.val(),
                                evt = jQuery191.Event('change'),
                                originalContent;
                        if (active.text() === text || editor.hasClass('error')) {
                            return true;
                        }
                        originalContent = active.html();
                        active.text(text).trigger(evt, text);
                        if (evt.result === false) {
                            active.html(originalContent);
                        }
                    },
                    movement = function(element, keycode) {
                        if (keycode === ARROW_RIGHT) {
                            return element.next('td');
                        } else if (keycode === ARROW_LEFT) {
                            return element.prev('td');
                        } else if (keycode === ARROW_UP) {
                            return element.parent().prev().children().eq(element.index());
                        } else if (keycode === ARROW_DOWN) {
                            return element.parent().next().children().eq(element.index());
                        }
                        return [];
                    };
            editor.blur(function() {
                setActiveText();
                editor.hide();
            }).keydown(function(e) {
                if (e.which === ENTER) {
                    setActiveText();
                    editor.hide();
                    active.focus();
                    e.preventDefault();
                    e.stopPropagation();
                } else if (e.which === ESC) {
                    editor.val(active.text());
                    e.preventDefault();
                    e.stopPropagation();
                    editor.hide();
                    active.focus();
                } else if (e.which === TAB) {
                    active.focus();
                } else if (this.selectionEnd - this.selectionStart === this.value.length) {
                    var possibleMove = movement(active, e.which);
                    if (possibleMove.length > 0) {
                        possibleMove.focus();
                        e.preventDefault();
                        e.stopPropagation();
                    }
                }
            })
                    .on('input paste', function() {
                        var evt = jQuery191.Event('validate');
                        active.trigger(evt, editor.val());
                        if (evt.result === false) {
                            editor.addClass('error');
                        } else {
                            editor.removeClass('error');
                        }
                    });
            element.on('click keypress dblclick', showEditor)
                    .css('cursor', 'pointer')
                    .keydown(function(e) {
                        var prevent = true,
                                possibleMove = movement(jQuery191(e.target), e.which);
                        if (possibleMove.length > 0) {
                            possibleMove.focus();
                        } else if (e.which === ENTER) {
                            showEditor(false);
                        } else if (e.which === 17 || e.which === 91 || e.which === 93) {
                            showEditor(true);
                            prevent = false;
                        } else {
                            prevent = false;
                        }
                        if (prevent) {
                            e.stopPropagation();
                            e.preventDefault();
                        }
                    });

            element.find('td').prop('tabindex', 1);

            jQuery191(window).on('resize', function() {
                if (editor.is(':visible')) {
                    editor.offset(active.offset())
                            .width(active.width())
                            .height(active.height());
                }
            });
        });

    };
    jQuery191.fn.editableTableWidget.defaultOptions = {
        cloneProperties: ['padding', 'padding-top', 'padding-bottom', 'padding-left', 'padding-right',
            'text-align', 'font', 'font-size', 'font-family', 'font-weight',
            'border', 'border-top', 'border-bottom', 'border-left', 'border-right'],
        editor: jQuery191('<input>')
    };


</script>

<%--<script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-popover.js"></script>--%>
<style type="text/css"> 
    td:focus {
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
        -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;	
        outline: rgb(91, 157, 217) auto 5px;
    }
    textarea.error {
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px red;
        -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px red;
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px red;	
        outline: thin auto red;
    }
    textarea {
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
        -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;	
        outline: rgb(91, 157, 217) auto 5px;
        outline-offset: 0px;
        border: none;
    }
</style>
<br>
<div class="hero-unit">
    <div class="row">
        <div id="conte" class="span12">
            <form class="form-horizontal" method="post" action="">
                <fieldset>
                    <legend>Evaluar información documental</legend>
                    <table id="tablaX" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th class="span3">Indicador</th>
                                <th class="span2">Documento asociado</th>
                                <th class="span2">Responsable</th>
                                <th class="span1">Medio</th>
                                <th class="span1">Lugar</th>
                                <th class="span1">Estado <i style="font-size: 25px; vertical-align: -2px;" class="icon-info-sign" data-content="<p style='font-weight:normal'>5: La información requerida en el indicador está completa y actualizada.<br/>
                                                            4: La información requerida en el indicador está completa y en proceso de actualización.<br/>
                                                            3: La información requerida en el indicador está en proceso de elaboración.<br/>
                                                            2: Se detectó la inexistencia de la información requerida en el indicador. Ya se previó su elaboración.<br/>
                                                            1: La información requerida en el indicador no existe y no se ha previsto su elaboración.<br/>
                                                            0: No aplica</p>" data-original-title="Escala de gradación"></i></th>
                                <th class="span2">Acci&oacute;n a implementar u observaci&oacute;n</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${lisrInidicadorsDoc.rowsByIndex}" var="item" varStatus="iter">
                                <c:set var="encontrado" value="false"></c:set>
                                <c:forEach items="${listaDoc.rowsByIndex}" var="itemNC" varStatus="iterNC"> 
                                    <c:choose>
                                        <c:when test="${item[0]==itemNC[0]}">
                                            <c:set var="encontrado" value="true"></c:set>
                                                <tr>
                                                    <td style="text-align: justify;"><c:out value="${item[1]} ${item[3]}"></c:out>
                                                    <input type="hidden" name="indicadorInput" value="<c:out value="${item[0]}"></c:out>">
                                                    </td>
                                                    <td><c:out value="${itemNC[2]}"></c:out></td>
                                                <td>${itemNC[3]}</td>
                                                <td>${itemNC[4]}</td>
                                                <td>${itemNC[5]}</td>
                                                <td>${itemNC[6]}</td>
                                                <td>${itemNC[7]}</td>
                                            </tr> 
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${encontrado==false}">
                                        <tr>
                                            <td style="text-align: justify;">${item[1]} ${item[3]}
                                                <input type="hidden" name="indicadorInput" value="${item[0]}">
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </c:when>
                                </c:choose>            
                            </c:forEach>                 
                        </tbody>
                    </table>
                </fieldset>
            </form>
        </div><!--/span-->        
    </div><!--/row-->    
</div><!--/hero-unit--> 
<script>
    jQuery191(function() {
        jQuery191('#tablaX').editableTableWidget({editor: jQuery191('<textarea>')});
        jQuery191('#tablaX tr').find("td:eq(5)").on('validate', function(evt, newValue) {
            if (newValue !== '1' && newValue !== '2' && newValue !== '3' && newValue !== '4' && newValue !== '5' && newValue !== '0') {
                return false; // mark cell as invalid 
            }
        });
        jQuery191('#tablaX tr').find("td:eq(5)").on('validate', function(evt, newValue) {
            if (newValue !== '1' && newValue !== '2' && newValue !== '3' && newValue !== '4' && newValue !== '5' && newValue !== '0') {
                return false; // mark cell as invalid 
            }
        });
        jQuery191('#tablaX tr').find("td").on('validate', function(evt, newValue) {
            if (newValue.length > 1999) {
                return false; // mark cell as invalid 
            }
        });
        jQuery191('#tablaX tr').find("td:eq(0)").on('validate', function(evt, newValue) {
            return false; // mark cell as invalid 
        });
        jQuery191('#tablaX td').on('change', function(evt, newValue) {
            // do something with the new cell value 
            var indicador = jQuery191(this).parents("tr").find("input[name='indicadorInput']").val();
            var columna = jQuery191(this).index();
            jQuery191.ajax({
                type: 'POST',
                url: "<%=request.getContextPath()%>/formController?action=evaluarInfoDocumentalAI",
                data: "indicador=" + indicador + "&columna=" + columna + "&valor=" + encodeURI(newValue),
                success: function() {
                    console.log("todo OK");
                },
                error: function() {
                    console.log("algo secede!");
                }        
            }); //fin $.ajax
        });
        //$("i").popover({trigger: "hover", placement: 'bottom',html: true});

    });
</script>
