<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<div class="hero-unit">
    <div class="row">
        <div class="span8">
            <form id="formCrearProc" class="form-horizontal" method="post">
                <fieldset>
                    <legend>Nuevo Proceso de Autoevaluación</legend>
                    <c:if test="${aux_index2 == 1}">
                        <a href="<%=request.getContextPath()%>/#detalleProceso">Detalle del Proceso Creado</a>
                        <br>
                    </c:if>
                    <div class="control-group">
                        <label for="programa"  class="control-label">Programa</label>
                        <div class="controls">
                            <span type="text" id="programa"  class="input-xlarge uneditable-input">${programa.nombre}</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="fechaI" class="control-label">fecha de Inicio</label>
                        <div class="controls">
                            <span id="fechaI" class="input-xlarge uneditable-input">Proceso en Configuraci&oacute;n</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="descripcion" class="control-label">Descripcion</label>
                        <div class="controls">
                            <c:if test="${aux_index2 == 0}">
                                <textarea rows="3" id="descripcion" name="descripcion" class="input-xlarge"></textarea>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button class="btn btn-primary" type="submit">Crear Proceso</button>
                            <button class="btn" type="reset">Cancelar</button>
                        </div>
                    </c:if>
                    <c:if test="${aux_index2 == 1}">
                        <textarea rows="3" id="descripcion" name="descripcion" class="input-xlarge">${descripcionProceso}</textarea>
                        </div>
                        </div>
                        <div class="form-actions">
                            <button class="btn btn-primary" type="submit">Actualizar Proceso</button>
                            <button class="btn" type="reset">Cancelar</button>
                        </div>
                    </c:if>
                </fieldset>
            </form>
        </div><!--/span-->        
    </div><!--/row-->    
</div>


