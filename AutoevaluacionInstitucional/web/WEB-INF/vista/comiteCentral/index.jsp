<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" 
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="language" content="en" />
        <title>Autoevaluacion Institucional</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/layout2.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui-1.8.5.custom.css" type="text/css" media="screen" charset="utf-8" />
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/jquery.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le styles -->
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/docs2.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet"/>



        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-ui.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.ba-hashchange.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-transition.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-dropdown.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-scrollspy.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-alert.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-modal.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-tooltip.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-popover.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-collapse.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-button.js"></script>

        <style type="text/css">
            .ui-layout-north {
                /* Drop-Down */
                bottom:		auto;
                margin:		0;
                padding-bottom: 30px;
            }

            .ui-layout-center{
                overflow: auto;
            }
            .ui-layout-west{
                padding-right: 0;
            }
            .inner-layout-north {
                /* Drop-Down */
                bottom:		auto;
                margin:		0;

            }
            .middle-center, .inner-center{
                padding: 0px;   

            }


        </style>

        <script type="text/javascript">
           
            var myLayout, innerLayout, middleLayout;
            $(document).ready( function() {
                                    
                myLayout = $('body').layout({
                    //	enable showOverflow on west-pane so CSS popups will overlap north pane
                    west__size:			270
                    ,   center__paneSelector:  ".ui-layout-center"
                    ,   north__paneClass:    "ui-layout-pane"
                    ,   closable:				true	// pane can open & close


                    //	reference only - these options are NOT required because 'true' is the default
                    ,	closable:				true	// pane can open & close
                    ,	resizable:				false	// when open, pane can be resized 
                    ,	slidable:				false	// when closed, pane can 'slide' open over other panes - closes on mouse-out
                        
                    ,       north__slidable:		false	// OVERRIDE the pane-default of 'slidable=true'
                    ,	north__spacing_open:	0		// no resizer-bar when open (zero height)
                    ,	south__resizable:		false	// OVERRIDE the pane-default of 'resizable=true'
                    ,	south__spacing_open:	0		// no resizer-bar when open (zero height)
                    ,	west__spacing_open:	1		// no resizer-bar when open (zero height)
                    ,       south__paneClass:               "ui-layout-pane"
                  	
                    ,	west__minSize:			200
                    ,	west__maxSize:			350
                                                
                     
                });
                
                myLayout.allowOverflow('north'); 
                // setTimeout( myLayout.resizeAll, 1000 ); /* allow time for browser to re-render with new theme */
               
               
               
               
                
            }); //fin de document.ready
                
           
        </script>
        <script type="text/javascript">
            $(function(){
            
                $(window).hashchange(function(){
                      var hash = location.hash;
                
                    if(hash=="#CerrarSesion"){
                        $.post('<%=request.getContextPath()%>/ControllerCC?action=CerrarSesion', function(data) {
                            location = "<%=request.getContextPath()%>/";
                                 
                        });//fin post
                                                        
                    }
                    
                    if(hash == "#crearFactor"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                          
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    beforeSend :function(){
                                        $("div.ui-layout-center").hide();
                                    },
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        $("div.ui-layout-center").show(100);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                        if(hash.indexOf("#editarFactor")!=-1){
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                            url3 = url3.replace('#editarFactor', "ControllerCC?action=editarFactorCC");
                   }
                    
                    if(hash == "#crearCaracteristica"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    beforeSend :function(){
                                        $("div.ui-layout-center").hide();
                                    },
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        $("div.ui-layout-center").show(100);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    
                    if(hash == "#crearIndicador"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#crearEncuesta"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#listarFactores"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#listarPreguntas"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#listarEncuestas"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#listarIndicadores"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#listarCaracteristicas"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                    if(hash == "#crearPregunta"){
                            
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                             url3 = url3.replace('#', "ControllerCC?action=")+"CC";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        
                                    } //fin success
                                }); //fin del $.ajax
                         
                    }
                
            });//fin hashchange
            });//fin function
        </script>

    </head>
    <body>
        <div class="ui-layout-north ui-widget-content">
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid" style="width: auto;">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="#">Autoevaluacion Institucional</a>
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class="active"><a href="<%=request.getContextPath()%>/#inicio">Inicio</a></li>
                                <li><a href="#">Contacto</a></li>
                            </ul>

                            <ul class="nav pull-right">
                                <li class="divider-vertical"></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown">${representante.personaId.nombre}<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Perfil</a></li>
                                        <li><a href="#">Cambiar Contrase&ntilde;a</a></li>
                                        <li class="divider"></li>
                                        <li><a href="<%=request.getContextPath()%>/#CerrarSesion">Cerrar Sesion</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- /.nav-collapse -->
                    </div>
                </div><!-- /navbar-inner -->
            </div><!-- /navbar -->

        </div><!--North-->

        <div class="ui-layout-south ui-widget-content"> 
            <div class="contenedor_footer fondo_footer" id="footer">
                <div class="links">
                    <a href="#"><span>Acerca de</span></a>

                    <a href="#"><span>Derechos de Autor</span></a>

                    <a href="#"><span>Ayuda</span></a>
                </div>
            </div>
        </div><!--South-->

        <div class="ui-layout-center">


        </div><!--/Center-->

        <div id="ui-layout-west" class="ui-layout-west">
            <div class="ui-layout-content">
                <div id="menu" style="padding: 8px 0pt;" class="well">
                    <ul class="nav nav-list">  
                        <li class="nav-header">Modelo de Autoevaluaci&oacute;n</li>
                        
                        <div id="accordion1" class="accordion">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseOne" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                                        Factores
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <li><a href="#crearFactor"><i class="icon-plus"></i> Crear Factor</a></li>
                                        <li><a href="#listarFactores"><i class="icon-th-list"></i> listar Factores</a></li>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="accordion2" class="accordion">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseCaracteristicas" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle">
                                        Caracteristicas
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseCaracteristicas" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <li><a href="#crearCaracteristica"><i class="icon-plus"></i> Crear Caracteristica</a></li>
                                        <li><a href="#listarCaracteristicas"><i class="icon-th-list"></i> listar Caracteristicas</a></li>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="accordion3" class="accordion">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseIndicadores" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                                        Indicadores
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseIndicadores" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <li><a href="#crearIndicador"><i class="icon-plus"></i> Crear Indicador</a></li>
                                        <li><a href="#listarIndicadores"><i class="icon-th-list"></i> listar Indicadores</a></li>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="accordion4" class="accordion">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapsePreguntas" data-parent="#accordion4" data-toggle="collapse" class="accordion-toggle">
                                        Preguntas
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapsePreguntas" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <li><a href="#crearPregunta"><i class="icon-plus"></i> Crear Pregunta</a></li>
                                        <li><a href="#listarPreguntas"><i class="icon-th-list"></i> listar Preguntas</a></li>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="accordion5" class="accordion">
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseEncuestas" data-parent="#accordion5" data-toggle="collapse" class="accordion-toggle">
                                        Encuestas
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseEncuestas" style="height: 0px;">
                                    <div class="accordion-inner">
                                        <li><a href="#crearEncuesta"><i class="icon-plus"></i> Crear Encuesta</a></li>
                                        <li><a href="#listarEncuestas"><i class="icon-th-list"></i> listar Encuestas</a></li>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </ul>
                </div>
            </div>
        </div><!--/West-->
    </body>
</html> 
