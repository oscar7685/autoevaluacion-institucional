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
       <!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.grid.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.pager.css" type="text/css" media="screen" charset="utf-8" />-->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui-1.8.5.custom.css" type="text/css" media="screen" charset="utf-8" />
        <!--<link rel="stylesheet" href="<%=request.getContextPath()%>/css/examples.css" type="text/css" media="screen" charset="utf-8" />-->
        <!--<link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.columnpicker.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick-default-theme.css" type="text/css" media="screen" charset="utf-8" />-->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styl.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" media="screen" charset="utf-8" />
        <link media="print" href="<%=request.getContextPath()%>/css/print.css" rel="stylesheet"/>

        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/jquery.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <script type="text/javascript"src="<%=request.getContextPath()%>/script/jquery.validate.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.metadata.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.jqprint-0.3.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/script/highlightFade.js"></script>
        <script src="<%=request.getContextPath()%>/script/highcharts.js"></script>
        <script src="<%=request.getContextPath()%>/script/highcharts-more.js"></script>
        <script src="<%=request.getContextPath()%>/script/exporting.js"></script>




        <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le styles -->
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap3.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap-responsive3.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/docs.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet"/>


        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.model.js"></script>-->

        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.event.drag-2.0.min.js"></script>
        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.editors.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.grid.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.pager.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.columnpicker.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.remotemodel.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jjmenu.js"></script>-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.ba-hashchange.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-ui.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.hotkeys.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-transition.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-dropdown.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-scrollspy.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-alert.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-modal.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-tooltip.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-popover.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-collapse.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-button.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-tab.js"></script>


        <style type="text/css">

            .page_loading {
                background-attachment: scroll;
                background-clip: border-box;
                background-color: #8F8F8F;
                background-image: none;
                background-origin: padding-box;
                background-position: 0 0;
                background-repeat: repeat;
                background-size: auto auto;
                border-bottom-left-radius: 5px;
                border-bottom-right-radius: 5px;
                border-top-left-radius: 5px;
                border-top-right-radius: 5px;
                color: #FFFFFF;
                height: 32px;
                left: 45%;
                line-height: 32px;
                margin-bottom: 0;
                margin-left: -62px;
                margin-right: 0;
                margin-top: -16px;
                padding-bottom: 0;
                padding-left: 10px;
                padding-right: 10px;
                padding-top: 0;
                position: absolute;
                top: 30%;
            }
            .page_loading span {
                color: #FFFFFF;
                font-size: 18px;
                font-weight: bold;
                line-height: 32px;
                font-family: Helvetica,Arial,sans-serif;
            }

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
            .ui-layout-pane2 { /* solo header */
                background:	#FFF; 
                /* <<<< ojo comentado por mi >>>>> */
                /*border: 1px solid #BBB; */


                /* DO NOT add scrolling (or padding) to 'panes' that have a content-div,
                   otherwise you may get double-scrollbars - on the pane AND on the content-div
                */

                padding: 0;
                overflow:	auto;
            }
            .ui-layout-pane-west{
                border-right: 1px solid #BBBBBB; 
            }

        </style>
        <script type="text/javascript">
            $(document).ready(function() {



                location = "/AutoevaluacionInstitucional/#inicio";

                $("ul.nav-list li a").click(function(event) {
                    $(".nav li").removeClass("active");
                    $(this).parent().siblings().removeClass("active");
                    $(this).parent().siblings().children("a").children("i").removeClass("icon-white");
                    $(this).parent().addClass("active");
                    $(this).children("i").addClass("icon-white");
                    location = $(this).attr("href");
                })
                $('a#infoDocumental').click(function() {
                    setTimeout(function() {
                        $("#west-closer").trigger("click");
                    }, 500);

                });
                $('a#infoNumerica').click(function() {
                    setTimeout(function() {
                        $("#west-closer").trigger("click");
                    }, 500);

                });
                $(".ui-layout-center").scroll(function() {
                    // If has not activated (has no attribute "data-top"

                    if ($(".subnav").length > 0) {
                        if (!$('.subnav').attr('data-top')) {
                            // If already fixed, then do nothing
                            if ($('.subnav').hasClass('subnav-fixed'))
                                return;
                            // Remember top position
                            var offset = $('.subnav').offset()

                            $('.subnav').attr('data-top', offset.top);
                        }

                        if ($('.subnav').attr('data-top') - $('.subnav').outerHeight() <= $(this).scrollTop())
                        {
                            $('.subnav').addClass('subnav-fixed');

                        }
                        else
                            $('.subnav').removeClass('subnav-fixed');

                    }


                });

            });

        </script>
        <script type="text/javascript">

            var myLayout, innerLayout, middleLayout;
            $(document).ready(function() {

                myLayout = $('body').layout({
                    //	enable showOverflow on west-pane so CSS popups will overlap north pane
                    west__size: 270
                            , center__paneSelector: ".ui-layout-center"
                            , north__paneClass: "ui-layout-pane2"
                            , closable: true	// pane can open & close

                            //	reference only - these options are NOT required because 'true' is the default

                            , resizable: false	// when open, pane can be resized 
                            , slidable: false	// when closed, pane can 'slide' open over other panes - closes on mouse-out
                            , north__size: 41
                            , north__maxSize: 41
                            , north__slidable: false	// OVERRIDE the pane-default of 'slidable=true'
                            , north__spacing_open: 0		// no resizer-bar when open (zero height)
                            , north__closable: false
                            , south__closable: false
                            , south__resizable: false	// OVERRIDE the pane-default of 'resizable=true'
                            , south__spacing_open: 0		// no resizer-bar when open (zero height)
                            , west__spacing_open: 0
                            , west__spacing_closed: 20
                            , west__togglerLength_closed: 75
                            , west__togglerAlign_closed: "top"
                            , west__togglerContent_closed: "<button id='west-open' class='close' style='float:left;margin-left:4px;opacity:1;margin-top:-10px;'>&raquo;</button>"
                            , west__togglerTip_closed: "Mostrar men�"
                            , west__togglerTip_open: "Ocultar men�"
                            , west__onclose_end: function() {
                        $("#conte").removeClass("span10").addClass("span12")
                    }
                    , west__onopen_end: function() {
                        $("#conte").removeClass("span12").addClass("span10")
                    }
                    , south__paneClass: "ui-layout-pane"
                            , west__togglerContent_open: ""
                            , west__minSize: 200
                            , west__maxSize: 350


                });

                myLayout.allowOverflow('north');
                // setTimeout( myLayout.resizeAll, 1000 ); /* allow time for browser to re-render with new theme */
                myLayout.addCloseBtn("#west-closer", "west");




            }); //fin de document.ready


        </script>
        <script type="text/javascript">

            $(function()
            {

                $("div.ui-layout-center").ajaxStart(function() {
                    $("div.ui-layout-center").append("<div class='contenido'></div>");
                    $("div.ui-layout-center").append("<div class='page_loading'>"
                            + "<span>Cargando</span>"
                            + "<img src='css/images/loading.gif' style='margin-left:6px;'>"
                            + "</div>");

                });
                //CERRAR PROCESO
                $('#myModalCP2b1').click(function() {

                    $("div.ui-layout-center").empty();
                    $.ajax({
                        type: "POST",
                        url: "<%=request.getContextPath()%>/formController?action=CerrarProcesoAI",
                        success: function(data)
                        {
                            $.ajax({
                                type: 'POST',
                                url: "<%=request.getContextPath()%>/ControllerAI?action=validar2",
                                success: function(data) {
                                    if (data == 1) {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=menuAI",
                                            success: function(data) {
                                                $("#menu2").empty();
                                                $("#menu2").html(data);
                                                setTimeout(function() {
                                                    location = "<%=request.getContextPath()%>/#detalleProceso";
                                                }, 200);
                                            }
                                        });
                                    } else {
                                        $('#myModalIP3').modal();
                                        setTimeout(function() {
                                            location = "<%=request.getContextPath()%>/#detalleProceso";
                                        }, 200);
                                    }
                                }
                            })
                        } //fin success
                    }); //fin del $.ajax*/
                });

                $('#myModalCP2b2').click(function() {
                    location = "<%=request.getContextPath()%>/#detalleProceso";
                });


                $('.about').click(function() {

                    $('#myModalAbout').modal();
                });


                //INICIAR PROCESO
                $('#myModalIP2b1').click(function() {

                    $("div.ui-layout-center").empty();
                    $.ajax({
                        type: "POST",
                        url: "<%=request.getContextPath()%>/formController?action=IniciarProcesoAI",
                        success: function()
                        {
                            $.ajax({
                                type: 'POST',
                                url: "<%=request.getContextPath()%>/ControllerAI?action=validar1",
                                success: function(data) {
                                    if (data == 1) {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=menuAI",
                                            success: function(data) {
                                                $("#menu2").empty();
                                                $("#menu2").html(data);
                                                setTimeout(function() {
                                                    location = "<%=request.getContextPath()%>/#detalleProceso";
                                                }, 200);
                                            }
                                        });
                                    } else {
                                        $('#myModalIP').modal();
                                        setTimeout(function() {
                                            location = "<%=request.getContextPath()%>/#detalleProceso";
                                        }, 200);
                                    }
                                }
                            })
                        } //fin success
                    }); //fin del $.ajax    });
                });

                $('#myModalIP2b2').click(function() {
                    $("ul.nav-list li:eq(2) a").trigger("click");
                });



                $(window).hashchange(function() {

                    var hash = location.hash;

                    if (hash.indexOf("PonderacionCaracteristicas") != -1 || hash.indexOf("PonderacionFactores") != -1
                            || hash == "" || hash.indexOf("error") != -1 || hash.indexOf("collapse") != -1 || hash == "#estudiantes"
                            || hash == "#docentes" || hash == "#egresados" || hash == "#administrativos" || hash == "#directivos" || hash == "#empleadores" || hash == "#gubernamentales") {


                    } else {//else principal

                        if (hash == "#CerrarSesion") {//CerrarSesion
                            $.ajax({
                                type: "POST",
                                url: "<%=request.getContextPath()%>/ControllerAI?action=CerrarSesion",
                                beforeSend: function() {
                                    $("div.ui-layout-center").hide();
                                },
                                success: function()
                                {
                                    location = "<%=request.getContextPath()%>/";
                                }
                            });

                        }//fin CerrarSesion
                        if (hash == "#inicio") {//inicio
                            $("div.ui-layout-center").empty();
                            $("div.ui-layout-center").append(
                                    "<div id='conte' class='span10' style='text-align: justify'>"
                                    + "<div class='hero-unit'>"
                                    + "<h1>�Autoevaluaci&oacute;n Institucional!</h1>"
                                    + "<p style='font-size: 18px; font-weight: 200; line-height: 27px;'>El Consejo Acad&eacute;mico aprob&oacute; el Modelo de Autoevaluaci&oacute;n con fines de Acreditaci&oacute;n Institucional de la Universidad de Cartagena; instrumento de gesti&oacute;n que permite la revisi&oacute;n sistem&aacute;tica de los procesos acad&eacute;micos y administrativos para  la elaboraci&oacute;n y puesta en marcha de planes de mejoramiento y de mantenimiento que den respuesta a su pol&iacute;tica de calidad.</p>"
                                    + "<p><a class='btn btn-primary btn-large' target='_blank' href='http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional'>Leer M&aacute;s �</a></p>"
                                    + "</div>"
                                    + "<div class='row-fluid'>"
                                    + "<div class='span4'>"
                                    + "<h2>Definici&oacute;n</h2>"
                                    + "<p>Para la Instituci�n, la autoevaluaci�n es un instrumento de gesti�n, que le permite una revisi�n sistem�tica de los procesos acad�micos y administrativos. De esta manera, se propone optimizar y abrir espacios para la elaboraci�n y puesta en marcha de planes de mejoramiento y de mantenimiento que, por supuesto, den respuesta a su pol�tica de calidad.</p>"
                                    + "<p><a target='_blank' href='http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/definicion' class='btn'>Ver detalles �</a></p>"
                                    + "</div><!--/span-->"
                                    + "<div class='span4'>"
                                    + "<h2>Modelo</h2>"
                                    + "<p>El Modelo de Autoevaluaci�n de la Universidad de Cartagena se dise�� siguiendo los lineamientos establecidos por el CNA y  fue articulado a la pol�tica de mejoramiento de la calidad de la Instituci�n. De acuerdo a ello, lo constituyen un conjunto de factores, caracter�sticas e indicadores que sirven como instrumento anal�tico en la valoraci�n de los diversos elementos que intervienen en la operaci�n comprensiva de la calidad de la Instituci�n.</p>"
                                    + "<p><a href='http://autoevaluacioninstitucional.unicartagena.edu.co/images/pdf/modelo_de_autoevaluacion_institucional_.pdf'>Descargar Modelo de Autoevaluaci�n Institucional</a></p></p>"
                                    + "<p><a target='_blank' href='http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/modelo-de-autoevaluacion' class='btn'>Ver detalles �</a></p>"
                                    + "</div>"
                                    + "<div class='span4'>"
                                    + "<h2>Marco Normativo</h2>"
                                    + "<p>Los Lineamientos de Autoevaluaci�n para la Acreditaci�n Institucional, el Sistema de Aseguramiento de la Calidad en Colombia, y El Modelo de Autoevaluaci�n Institucional con fines de acreditaci�n de la Universidad de Cartagena, se fundamentan en normas externas y normas internas. </p>"
                                    + "<p><a target='_blank' href='http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/marco-normativo' class='btn'>Ver detalles �</a></p>"
                                    + "</div><!--/span-->"
                                    + "</div><!--/row-->"
                                    + "</div>");
                            $("ul.nav-list li").removeClass("active");
                            $(".nav-collapse .nav >li:eq(0)").addClass("active");
                            $("ul.nav-list li").siblings().children("a").children("i").removeClass("icon-white");
                            return false;
                        } //fin inicio



                        if (hash != "#detalleProceso" && hash != "#listarPonderacionFactor" && hash != "#listarPonderacionCaracteristica"
                                && hash != "#listarProcesos" && hash != "#listarEvaluarDoc" && hash != "#listarEvaluarNum" && hash.indexOf("#detalleFactor") == -1 && hash.indexOf("#detallePFactor") == -1 && hash.indexOf("#detallePCaracteristica") == -1
                                && hash.indexOf("#detalleCaracteristica") == -1 && hash.indexOf("#detalleIndicador") == -1 && hash.indexOf("#detallePIndicador") == -1 && hash != "#CerrarSesion" && hash.indexOf("#detallePregunta") == -1 && hash.indexOf("#verEncuesta") == -1 && hash.indexOf("#detalleDPregunta") == -1)
                        { //si no es ---

                            if (middleLayout) {

                                middleLayout.destroy();
                                window[ "middleLayout" ] = null;

                            }
                            if (innerLayout) {
                                innerLayout.destroy();
                                window[ "innerLayout" ] = null;
                            }

                            var auxAsignarC1;


                            $("div.ui-layout-center").empty();
                            var url3 = "<%=request.getContextPath()%>/" + hash;

                            if (hash == "#PonderacionFactor") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";

                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {

                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);


                                        setTimeout(function() {
                                            $("div.ui-layout-center").scrollspy();
                                        }, 500);

                                        $("div.ui-layout-center").scrollspy('refresh');



                                        $("#formPondeFa").validate({
                                            errorElement: "em"
                                                    ,
                                            highlight: function(element, errorClass) {
                                                $(element).parent("td").children("div").addClass("in");
                                                $(element).parent("td").children("div").show();
                                            },
                                            unhighlight: function(element, errorClass, validClass) {
                                                $(element).parent("td").children("div").removeClass("in");
                                                $(element).parent("td").children("div").hide();
                                            },
                                            errorPlacement: function(error, element) {
                                                error.appendTo($(element).parent("td").children("div"));
                                            },
                                            rules: {
                                                field: {
                                                    required: true,
                                                    number: true
                                                }
                                            },
                                            submitHandler: function() {
                                                var suma = 0;
                                                $("input[name^='ponderacion']").each(function() {
                                                    suma += Number($(this).val());


                                                });
                                                if (suma == 100) {
                                                    setTimeout(function() {
                                                        $.ajax({
                                                            type: 'POST',
                                                            url: "<%=request.getContextPath()%>/formController?action=asignarPonderacionFactorAIp",
                                                            data: $("#formPondeFa").serialize(),
                                                            success: function() {
                                                                //alert("Ponderaci�n de Factores Actualizada con Exito!");
                                                                $('#myModalF').modal();
                                                                $('#myModalF').on('hidden', function() {
                                                                    location = "<%=request.getContextPath()%>/#listarPonderacionFactor";
                                                                })
                                                            } //fin success

                                                        }); //fin $.ajax
                                                    }, 400);
                                                } else {

                                                    $(".alert-error").show();
                                                    $("ul.nav-pills li:eq(0) a").trigger("click");
                                                }


                                            } //fin submitHandler

                                        });
                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if (hash == "#PonderacionCaracteristica") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";



                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                        setTimeout(function() {
                                            $("div.ui-layout-center").scrollspy();
                                        }, 500);
                                        $("div.ui-layout-center").scrollspy('refresh');
                                        //{offset:80}   
                                    } //fin success
                                }); //fin del $.ajax


                            }
                            else if (hash == "#AsignacionEncuestas") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";


                                var jaja34 = function() {
                                    $("div.ui-layout-center").empty();
                                    $.ajax({
                                        type: "POST",
                                        url: url3,
                                        success: function(data)
                                        {
                                            $(".contenido").append(data);
                                            setTimeout(function() {
                                                $(".page_loading").hide();
                                            }, 200);


                                            $("#formAsigEnc").submit(function(event) {
                                                event.preventDefault();

                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=asignarEncuestasAIp",
                                                    data: $("#formAsigEnc").serialize(),
                                                    success: function() {

                                                        $("#resultados").hide();
                                                        $("#select option:eq(0)").attr("selected", "selected");
                                                        $('#myModalE').modal();


                                                        $('#myModalE').on('hidden', function() {
                                                            setTimeout(function() {
                                                                $(".page_loading").hide();
                                                            }, 200);
                                                        });

                                                    } //fin success

                                                }); //fin $.ajax
                                            }); //fin submit



                                        } //fin success
                                    }); //fin del $.ajax

                                } //fin jaja34  
                                jaja34();


                            }
                            else if (hash == "#AsignacionMuestra") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";

                                var jaja34 = function() {
                                    $("div.ui-layout-center").empty();
                                    $.ajax({
                                        type: "POST",
                                        url: url3,
                                        success: function(data)
                                        {
                                            $(".contenido").append(data);
                                            setTimeout(function() {
                                                $(".page_loading").hide();
                                            }, 200)

                                        } //fin success
                                    }); //fin del $.ajax

                                } //fin jaja34  
                                jaja34();


                            }
                            else if (hash == "#infoDocumental") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";

                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                        setTimeout(function() {
                                            $("div.ui-layout-center").scrollspy();
                                        }, 500);
                                        $("div.ui-layout-center").scrollspy('refresh');

                                        $("#formInfoDoc").submit(function(event) {
                                            event.preventDefault();
                                            $.ajax({
                                                type: 'POST',
                                                url: "<%=request.getContextPath()%>/formController?action=evaluarInfoDocumentalAI",
                                                data: $("#formInfoDoc").serialize(),
                                                success: function() {
                                                    $('#myModalID').modal();
                                                    $('#myModalID').on('hidden', function() {
                                                        location = "<%=request.getContextPath()%>/#listarEvaluarDoc";
                                                    })
                                                } //fin success
                                            }); //fin $.ajax
                                        }); //fin submit
                                        //{offset:80}   
                                    } //fin success
                                }); //fin del $.ajax                 
                            }
                            else if (hash == "#infoNumerica") {
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";

                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);
                                        setTimeout(function() {
                                            $("div.ui-layout-center").scrollspy();
                                        }, 500);
                                        $("div.ui-layout-center").scrollspy('refresh');
                                        $("#formInfoNum").submit(function(event) {
                                            event.preventDefault();
                                            $.ajax({
                                                type: 'POST',
                                                url: "<%=request.getContextPath()%>/formController?action=evaluarInfoNumericaAI",
                                                data: $("#formInfoNum").serialize(),
                                                success: function() {
                                                    $('#myModalIN').modal();
                                                    $('#myModalIN').on('hidden', function() {
                                                        location = "<%=request.getContextPath()%>/#listarEvaluarNum";
                                                    })
                                                } //fin success
                                            }); //fin $.ajax
                                        }); //fin submit
                                        //{offset:80}   
                                    } //fin success
                                }); //fin del $.ajax                 
                            }
                            else if (hash == "#CrearProceso") {
                                var a = 0;
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                        setTimeout(function() {
                                        }, 200);
                                        $("#formCrearProc").validate({
                                            submitHandler: function() {

                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=crearProcesoAIp",
                                                    data: $("#formCrearProc").serialize(),
                                                    success: function() {
                                                        $('#myModalP1').modal();


                                                    } //fin success
                                                }); //fin $.ajax    
                                            }
                                        });


                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if (hash == "#CrearProceso1") {

                                var a = 0;
                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                        setTimeout(function() {
                                        }, 200);
                                        $("#formCrearProc").validate({
                                            submitHandler: function() {
                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=crearProcesoAIp",
                                                    data: $("#formCrearProc").serialize(),
                                                    success: function() {

                                                        setTimeout(function() {
                                                            $('#myModalP').modal();


                                                        }, 2000);

                                                        $('#myModalP').on('hidden', function() {
                                                            setTimeout(function() {
                                                                $(".page_loading").hide();
                                                            }, 200);
                                                            $("#menu").load("<%=request.getContextPath()%>/ControllerAI?action=menuAI");
                                                            setTimeout(function() {
                                                                location = '<%=request.getContextPath()%>/';
                                                            }, 200);
                                                        });
                                                    } //fin success
                                                }); //fin $.ajax   
                                            }
                                        });
                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if (hash == "#IniciarProceso") {
                                $('#myModalIP2').modal();
                            }
                            else if (hash == "#CerrarProceso") {
                                $('#myModalCP2').modal();
                            }
                            else {


                                url3 = url3.replace('#', "ControllerAI?action=") + "AI";
                                $.ajax({
                                    type: 'POST',
                                    url: url3,
                                    success: function(data) {

                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200)
                                    } //fin success
                                }); //fin $.ajax
                            }
                            //fin si no es ---
                        } else { //si sio es ---

                            if (hash == "#detalleProceso")
                            {
                                myLayout.addCloseBtn("#west-closer", "west");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=detalleProceso",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=detalleProceso",
                                            success: function(data) {
                                                $(".contenido").append(data);
                                                setTimeout(function() {
                                                    $(".page_loading").hide();
                                                }, 200);
                                            } //fin success
                                        }); //fin $.ajax
                                    }
                                });
                            }
                            if (hash == "#listarProcesos")
                            {
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=listarProcesos",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarProceso",
                                            success: function(data) {
                                                $("#center").html(data);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if (hash == "#listarPonderacionFactor") {
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=listarPonderacionFactor",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarPonderacionFactor",
                                            success: function(data) {
                                                $(".contenido").append(data);
                                                setTimeout(function() {
                                                    $(".page_loading").hide();
                                                }, 200)
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if (hash == "#listarPonderacionCaracteristica") {
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=listarPonderacionCaracteristica",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarPonderacionCaracteristica",
                                            success: function(data) {
                                                $(".contenido").append(data);
                                                setTimeout(function() {
                                                    $(".page_loading").hide();
                                                }, 200);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if (hash == "#listarEvaluarDoc") {
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=listarEvaluarDoc",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarEvaluarDoc",
                                            success: function(data)
                                            {
                                                $(".contenido").append(data);
                                                setTimeout(function() {
                                                    $(".page_loading").hide();
                                                }, 200);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if (hash == "#listarEvaluarNum") {
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>/jsonController?ejecucion=listarEvaluarNum",
                                    success: function() {
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarEvaluarNum",
                                            success: function(data)
                                            {
                                                $(".contenido").append(data);
                                                setTimeout(function() {
                                                    $(".page_loading").hide();
                                                }, 200);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }

                            else if (hash.indexOf("#detalleFactor") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detalleFactor', "ControllerAI?action=detalleFactorAI");
                                url4 = url4.replace('&', "&idF=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                    } //fin success
                                }); //fin $.ajax

                            }else if (hash.indexOf("#detallePFactor") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detallePFactor', "ControllerAI?action=detallePFactorAI");
                                url4 = url4.replace('&', "&idF=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                    } //fin success
                                }); //fin $.ajax

                            } else if (hash.indexOf("#detalleCaracteristica") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detalleCaracteristica', "ControllerAI?action=detalleCaracteristicaAI");
                                url4 = url4.replace('&', "&idC=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);
                                    } //fin success
                                }); //fin $.ajax

                            }
                            else if (hash.indexOf("#detallePCaracteristica") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detallePCaracteristica', "ControllerAI?action=detallePCaracteristicaAI");
                                url4 = url4.replace('&', "&idC=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);
                                    } //fin success
                                }); //fin $.ajax

                            }
                            else if (hash.indexOf("#detalleIndicador") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detalleIndicador', "ControllerAI?action=detalleIndicadorAI");
                                url4 = url4.replace('&', "&idI=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);
                                    } //fin success
                                }); //fin $.ajax

                            }
                            else if (hash.indexOf("#detallePIndicador") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detallePIndicador', "ControllerAI?action=detallePIndicadorAI");
                                url4 = url4.replace('&', "&idI=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);
                                    } //fin success
                                }); //fin $.ajax

                            }
                            else if (hash.indexOf("#detallePregunta") != -1) {

                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detallePregunta', "ControllerAI?action=detallePreguntaAI");
                                url4 = url4.replace('&', "&idP=");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                    } //fin success
                                }); //fin $.ajax

                            }
                            else if (hash.indexOf("#detalleDPregunta") != -1) {
                                console.log("pasamos por aqui!!!")
                                var url4 = "<%=request.getContextPath()%>/" + hash;

                                url4 = url4.replace('#detalleDPregunta', "ControllerAI?action=detalleDPreguntaAI");
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: 'POST',
                                    url: url4,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        setTimeout(function() {
                                            $(".page_loading").hide();
                                        }, 200);

                                    } //fin success
                                }); //fin $.ajax

                            }


                            else if (hash.indexOf("#verEncuesta") != -1) {
                                var cual = hash.split("&");
                                var url3 = "<%=request.getContextPath()%>/ControllerCC?action=";
                                url3 = url3.concat(cual[0].substring(1), "CC&id=", cual[1]);
                                $("div.ui-layout-center").empty();
                                $.ajax({
                                    type: "POST",
                                    url: url3,
                                    success: function(data)
                                    {
                                        $(".contenido").append(data);
                                        $(".contenido").show(200, function() {
                                            $(".page_loading").hide();
                                        })

                                    } //fin success
                                }); //fin del $.ajax
                            }


                        } //fin si si es ---

                    } //fin else principal

                });

            });  //fin del function   



            //setTimeout(function () { $.jstree._focused().select_node("#detalle"); }, 1000);

        </script> 
    </head>
    <body>
        <div class="ui-layout-north ui-widget-content">
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" style="padding-bottom: 3px; width:291px; padding-top: 6px"><img src="css/images/logoSIA.png"></img>&nbsp;&nbsp;&nbsp;Gesti&oacute;n del proceso</a>

                        <div class="btn-group pull-right">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-user"></i> ${representante.personaId.nombre}
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Perfil</a></li>
                                <li><a href="#">Cambiar Contrase&ntilde;a</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=request.getContextPath()%>/#CerrarSesion">Cerrar Sesion</a></li>
                            </ul>
                        </div>
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class="active"><a href="<%=request.getContextPath()%>/#inicio">Inicio</a></li>
                                <li><a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/contacto">Contacto</a></li>
                            </ul>
                        </div><!-- /.nav-collapse -->

                    </div>
                </div><!-- /navbar-inner -->
            </div><!-- /navbar -->
        </div><!--North-->

        <div class="ui-layout-south ui-widget-content"> 
            <div class="contenedor_footer fondo_footer" id="footer">
                <div class="links">
                    <a style="font-weight: normal"><span class="muted">&copy; Universidad de Cartagena 2012</span></a>

                    <a href="#" class="about"><span>Acerca de</span></a>

                    <a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/contacto"><span>Contacto</span></a>

                    <a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/contacto"><span>Ayuda</span></a>
                </div>
            </div>

        </div><!--South-->

        <div id="center" class="ui-layout-center">
            <div id="conte" class="span10" style="text-align: justify">
                <div class="hero-unit">
                    <h1>Autoevaluaci&oacute;n Institucional!</h1>
                    <p style='font-size: 18px; font-weight: 200; line-height: 27px;'>El Consejo Acad&eacute;mico aprob&oacute; el Modelo de Autoevaluaci&oacute;n con fines de Acreditaci&oacute;n Institucional de la Universidad de Cartagena; instrumento de gesti&oacute;n que permite la revisi&oacute;n sistem&aacute;tica de los procesos acad&eacute;micos y administrativos para  la elaboraci&oacute;n y puesta en marcha de planes de mejoramiento y de mantenimiento que den respuesta a su pol&iacute;tica de calidad.</p>
                    <p><a class="btn btn-primary btn-large" target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional">Leer M&aacute;s �</a></p>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <h2>Definici�n</h2>
                        <p>Para la Instituci�n, la autoevaluaci�n es un instrumento de gesti�n, que le permite una revisi�n sistem�tica de los procesos acad�micos y administrativos. De esta manera, se propone optimizar y abrir espacios para la elaboraci�n y puesta en marcha de planes de mejoramiento y de mantenimiento que, por supuesto, den respuesta a su pol�tica de calidad.</p>
                        <p><a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/definicion" class="btn">Ver detalles �</a></p>
                    </div>
                    <div class="span4">
                        <h2>Modelo</h2>
                        <p>El Modelo de Autoevaluaci�n de la Universidad de Cartagena se dise�� siguiendo los lineamientos establecidos por el CNA y  fue articulado a la pol�tica de mejoramiento de la calidad de la Instituci�n. De acuerdo a ello, lo constituyen un conjunto de factores, caracter�sticas e indicadores que sirven como instrumento anal�tico en la valoraci�n de los diversos elementos que intervienen en la operaci�n comprensiva de la calidad de la Instituci�n.</p>
                        <p><a href="http://autoevaluacioninstitucional.unicartagena.edu.co/images/pdf/modelo_de_autoevaluacion_institucional_.pdf">Descargar Modelo de Autoevaluaci�n Institucional</a></p>
                        <p><a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/modelo-de-autoevaluacion" class="btn">Ver detalles �</a></p>
                    </div><!--/span-->
                    <div class="span4">
                        <h2>Marco Normativo</h2>
                        <p>Los Lineamientos de Autoevaluaci�n para la Acreditaci�n Institucional, el Sistema de Aseguramiento de la Calidad en Colombia, y El Modelo de Autoevaluaci�n Institucional con fines de acreditaci�n de la Universidad de Cartagena, se fundamentan en normas externas y normas internas. </p>
                        <p><a target="_blank" href="http://autoevaluacioninstitucional.unicartagena.edu.co/index.php/autoevaluacion-institucional/marco-normativo" class="btn">Ver detalles �</a></p>
                    </div><!--/span-->
                </div><!--/row-->
            </div>      
        </div><!--/Center-->

        <div id="ui-layout-west" class="ui-layout-west">
            <div class="ui-layout-content" id="menu2">
                <div id="menu" style="padding: 8px 0pt;" class="well">
                    <ul class="nav nav-list">
                        <button id="west-closer" class="close">&laquo;</button>
                        <c:if test="${aux_index2 == 1}">
                            <li class="nav-header">Proceso en configuraci�n</li>
                            <li><a href="<%=request.getContextPath()%>/#CrearProceso"><i class="icon-th"></i> Detalle Proceso</a></li>
                            <li><a id="ponderacionFact" href="<%=request.getContextPath()%>/#PonderacionFactor"><i class="icon-pencil"></i> Ponderacion Factores</a></li>
                            <li><a id="ponderacionCara" href="<%=request.getContextPath()%>/#PonderacionCaracteristica"><i class="icon-pencil"></i> Ponderacion Caracteristicas</a></li>
                            <li><a  id="asignarMuestra"  href="<%=request.getContextPath()%>/#AsignacionMuestra"><i class="icon-user"></i> Asignar Muestra</a></li>
                            <li><a id="asignarEncuesta"  href="<%=request.getContextPath()%>/#AsignacionEncuestas"><i class="icon-question-sign"></i> Asignacion Encuestas</a></li>
                            <li class="divider"></li>
                            <li><a href="#IniciarProceso"><i class="icon-play"></i> Iniciar Proceso</a></li> 
                            <li class="nav-header">Procesos Anteriores</li>
                            <li><a id="listarProcesos" href="<%=request.getContextPath()%>/#listarProcesos"><i class="icon-th-list"></i> Listar Procesos</a></li>        
                            </c:if>
                            <c:if test="${aux_index2 == 2}">
                            <li class="nav-header">Proceso en ejecuci�n</li>
                            <li class="divider"></li>
                            <li class="nav-header">Informaci�n del Proceso</li>
                            <li><a id="detalle" href="<%=request.getContextPath()%>/#detalleProceso"><i class="icon-th"></i> Detalle Proceso</a></li>
                            <li><a id="ponderacionFact" href="<%=request.getContextPath()%>/#listarPonderacionFactor"><i class="icon-pencil"></i> Ponderacion Factores</a></li>
                            <li><a id="ponderacionCara" href="<%=request.getContextPath()%>/#listarPonderacionCaracteristica"><i class="icon-pencil"></i> Ponderacion Caracteristicas</a></li>
                            <li><a id="asignarEncuesta"  href="<%=request.getContextPath()%>/#AsignacionEncuestas"><i class="icon-question-sign"></i> Encuestas asignadas</a></li>
                            <li class="divider"></li>
                            <li class="nav-header">Configuraci�n del Proceso</li>
                            <li><a  id="asignarMuestra"  href="<%=request.getContextPath()%>/#AsignacionMuestra"><i class="icon-user"></i> Muestra Asignada</a></li>
                            <li><a  id="infoDocumental"  href="<%=request.getContextPath()%>/#infoDocumental"><i class="icon-list-alt"></i> Informaci�n Documental</a></li>
                            <li><a  id="infoNumerica"  href="<%=request.getContextPath()%>/#infoNumerica"><i class="icon-list-alt"></i> Informaci�n Num�rica</a></li>
                            <li><a href="#CerrarProceso"><i class="icon-trash"></i> Finalizar Proceso</a></li>
                            <li class="divider"></li>
                            <li class="nav-header">Estado del proceso</li>
                            <li><a  id="informeEncuesta"  href="<%=request.getContextPath()%>/#estadoProceso"><i class="icon-time"></i> Estado del proceso</a></li>                                     
                                <%--    <li><a  id="informeEncuesta"  href="<%=request.getContextPath()%>/#informe1"><i class="icon-signal"></i> Informe resultado por encuestas</a></li>
                                    <li><a  id="informeEncuesta2"  href="<%=request.getContextPath()%>/#informeMatriz"><i class="icon-signal"></i> Matriz de calidad por caracteristicas</a></li>
                                    <li><a  id="informeMatrizFact"  href="<%=request.getContextPath()%>/#informeMatrizFactores"><i class="icon-signal"></i> Matriz de calidad por factores</a></li>
                                --%> <li class="divider"></li>
                            <li class="nav-header">Procesos Anteriores</li>
                            <li><a id="listarProcesos" href="<%=request.getContextPath()%>/#listarProcesos"><i class="icon-th-list"></i> Listar Procesos</a></li>        
                            </c:if>
                            <c:if test="${aux_index2 == 3}">
                            <li class="nav-header">Proceso finalizado</li>
                            <li class="divider"></li>
                            <li class="nav-header">Informaci�n del proceso</li>
                            <li><a id="detalle" href="<%=request.getContextPath()%>/#detalleProceso"><i class="icon-th"></i> Detalle Proceso</a></li>
                            <li><a id="ponderacionFact" href="<%=request.getContextPath()%>/#listarPonderacionFactor"><i class="icon-pencil"></i> Ponderacion factores</a></li>
                            <li><a id="ponderacionCara" href="<%=request.getContextPath()%>/#listarPonderacionCaracteristica"><i class="icon-pencil"></i> Ponderacion caracteristicas</a></li>
                            <li><a id="asignarEncuesta"  href="<%=request.getContextPath()%>/#AsignacionEncuestas"><i class="icon-question-sign"></i> Encuestas asignadas</a></li>        
                            <li><a  id="asignarMuestra"  href="<%=request.getContextPath()%>/#AsignacionMuestra"><i class="icon-user"></i> Muestra Asignada</a></li>
                            <li><a  id="infoDocumental"  href="<%=request.getContextPath()%>/#listarEvaluarDoc"><i class="icon-list-alt"></i> Informaci�n Documental</a></li>
                            <li><a  id="infoNumerica"  href="<%=request.getContextPath()%>/#listarEvaluarNum"><i class="icon-list-alt"></i> Informaci�n Num�rica</a></li>
                            <li class="divider"></li>
                            <li class="nav-header">Resultados del proceso</li>
                            <li><a  id="informeEncuesta"  href="<%=request.getContextPath()%>/#estadoProceso"><i class="icon-info-sign"></i> Estad�sticas generales</a></li>                                     
                                <%--     <li><a  id="informeEncuesta"  href="<%=request.getContextPath()%>/#informe1"><i class="icon-signal"></i> Informe resultado por encuestas</a></li>
                                    <li><a  id="informeEncuesta2"  href="<%=request.getContextPath()%>/#informeMatriz"><i class="icon-signal"></i> Matriz de calidad por caracteristicas</a></li>
                                    <li><a  id="informeMatrizFact"  href="<%=request.getContextPath()%>/#informeMatrizFactores"><i class="icon-signal"></i> Matriz de calidad por factores</a></li>
                                --%>   <li class="divider"></li>
                            <li class="nav-header">Procesos</li>
                                <c:if test="${proActivo == 0}">
                                <li><a href="#CrearProceso1"><i class="icon-plus"></i>Proceso Nuevo</a></li>
                                </c:if>
                            <li><a id="listarProcesos" href="<%=request.getContextPath()%>/#listarProcesos"><i class="icon-th-list"></i> Listar Procesos</a></li>
                            </c:if>
                            <c:if test="${aux_index2 == 0}">
                            <li class="nav-header">Proceso</li>
                            <li><a href="#CrearProceso1"><i class="icon-plus"></i>Proceso Nuevo</a></li>
                            </c:if>
                    </ul>
                </div>
                <div>
                    <c:if  test="${aux_index2 == 0 || aux_index2 == 1}">
                        <a title="Autoevaluaci�n Institucional" href="http://autoevaluacioninstitucional.unicartagena.edu.co/" target="_blank"><img src="<%=request.getContextPath()%>/css/selloAcreditacion.png" style="width: 220px;"></img></a>
                        <a title="Universidad de Cartagena" href="http://www.unicartagena.edu.co/" target="_blank"><img src="<%=request.getContextPath()%>/css/LogoUdeC.png" style="width: 220px;"></img></a>
                        </c:if>
                        <c:if  test="${aux_index2 == 3}">
                        <a title="Autoevaluaci�n Institucional" href="http://autoevaluacioninstitucional.unicartagena.edu.co/" target="_blank"><img src="<%=request.getContextPath()%>/css/selloAcreditacion.png" style="width: 230px;"></img></a>
                        </c:if>
                        <c:if  test="${aux_index2 == 2}">
                        <div id="estado" class="alert alert-success" style="bottom: 0px; position: absolute; right: 0px; margin-right: 10px; margin-left: 10px; left: 0px; margin-bottom: 0px;">
                            <p>Estado del proceso: <c:out value="${porceEstadoProceso}"></c:out></p>
                                <div class="progress progress-success progress-striped active">
                                    <div class="bar" style="width: ${porceEstadoProceso}"></div>
                            </div>
                        </div>  
                    </c:if>
                </div>
            </div>
        </div><!--/West-->

        <div class="modal hide fade" id="myModalF">
            <div class="modal-header" >
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderaci�n de factores.</h4>
                <br>
                    <p>La ponderaci�n de factores ha sido satisfactoriamente asignada</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalF-->
        <div class="modal hide fade" id="myModalC">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderaci�n de caracter�sticas.</h4>
                <br>
                    <p>La ponderaci�n de caracter�sticas ha sido satisfactoriamente asignada</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalC-->
        <div class="modal hide fade" id="myModalE">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Asignaci�n de Encuestas.</h4>
                <br>
                    <p>Las encuestas han sido asignadas para la fuente seleccionada.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalE-->
        <div class="modal hide fade" id="myModalP">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Nuevo Proceso.</h4>
                <br>
                    <p>Se ha creado un nuevo proceso de autoevaluaci�n</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalP-->
        <div class="modal hide fade" id="myModalP1">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Nuevo Proceso.</h4>
                <br>
                    <p>Proceso de autoevaluaci�n actualizado con �xito!</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalP1-->
        <div class="modal hide fade" id="myModalM">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Informaci�n</h3>
            </div>
            <div class="modal-body">
                <h4>Asignaci�n de Muestra.</h4>
                <br>
                    <p>La muestra ha sido asignada para la fuente seleccionada!</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalM-->
        <div class="modal hide fade" id="myModalLoading">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Creando Proceso</h3>
            </div>
            <div class="modal-body">
                <div class="progress progress-info
                     progress-striped active">
                    <div class="bar"
                         style="width: 5%;"></div>
                </div>
            </div>

        </div><!--/ModalLoading-->
        <div class="modal hide fade" id="myModalIP">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Iniciar Proceso de Autoevaluaci�n Institucional.</h4>
                <br>
                    <p>Debe configurar todo el proceso para continuar.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div>
        <div class="modal hide fade" id="myModalIP3">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Finalizar Proceso de Autoevaluaci�n Institucional.</h4>
                <br>
                    <p>Debe evaluar la informaci�n num�rica y documental para continuar.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div>
        <div class="modal hide fade" id="myModalIP2">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Iniciar Proceso de Autoevaluaci�n Institucional.</h4>
                <br>
                    <p>Esta seguro que desea ejecutar el Proceso?. Tenga en cuenta que s�lo la asignaci�n de muestra para la fuente estudiante ser� editable al ejecutar el proceso. Los dem�s par�metros no podr�n ser modificados.</p>
            </div>
            <div class="modal-footer">
                <a id="myModalIP2b2" class="btn btn-secundary" data-dismiss="modal" href="#">Cancelar</a>
                <a id="myModalIP2b1" class="btn btn-primary" data-dismiss="modal" href="#">Iniciar Proceso</a>
            </div>
        </div>



        <div class="modal hide fade" id="myModalCP2">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Finalizar Proceso de Autoevaluaci�n Institucional.</h4>
                <br>
                    <p>Esta seguro que desea finalizar el Proceso?. Tenga en cuenta que esta acci�n no se podr� deshacer.</p>
            </div>
            <div class="modal-footer">
                <a id="myModalCP2b2" class="btn btn-secundary" data-dismiss="modal" href="#">Cancelar</a>
                <a id="myModalCP2b1" class="btn btn-primary" data-dismiss="modal" href="#">Finalizar Proceso</a>
            </div>
        </div>



        <!--/ModalIP-->
        <div class="modal hide fade" id="myModalC1">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderaci�n de Caracter�sticas.</h4>
                <br>
                    <p>Debe asignar primero la poderaci�n de factores para proceder a las asignaci�n de ponderaci�n de caracter�sticas.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalC1-->

        <!--/ModalID-->
        <div class="modal hide fade" id="myModalID">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Evaluaci�n informaci�n documental.</h4>
                <br>
                    <p>La informaci�n documental se ha evaluado satisfactoriamente .</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div>

        <div class="modal hide fade" id="myModalIN">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">�</a>
                <h3>Atenci�n!</h3>
            </div>
            <div class="modal-body">
                <h4>Evaluaci�n informaci�n num�rica.</h4>
                <br>
                    <p>La informaci�n num�rica se ha evaluado satisfactoriamente .</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div>

        <div class="modal hide fade" id="myModalConfigurarMuestra">
        </div>

        <div class="modal hide fade" id="myModalNuevoConglomerado">
        </div>

        <div class="modal hide fade" id="myModalAbout">
            <div class="modal-header" style="padding-bottom: 19px; border-bottom:0;background-color: #282728">
                <a data-dismiss="modal" style="margin-top: 0px; padding: 0px" class="close">�</a>
                <h3></h3>
            </div>
            <div class="modal-body" style="background-color: #282728" align="center">
                <img src="<%=request.getContextPath()%>/css/images/SIA UDEC - LOGO_1.png"></img>
                <br>
                    <%--    <div style="background-color: #282728;border-top: 0px;border-radius:0;" class="modal-footer">--%>
                    <%-- <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>--%>
                    <p style="color: #FFFFFF; text-align: right">SIA-UdeC v1.0</p>
                    <p style="color: #FFFFFF; text-align: justify">El sistema de autoevaluaci�n institucional es un apoyo

                        fundamental para los procesos de acreditaci�n que debe realizar la Universidad, con

                        el prop�sito de aportar en forma representativa al aumento en la calidad de la

                        Educaci�n Superior, contribuyendo as� al desarrollo del pa�s.</p>
                    <p style="color: #FFFFFF;  text-align: right">Desarrollado por Esoluciones </p>
                    <p style="color: #FFFFFF; text-align: right">Edgar Parra Chac�n - Edna G�mez Bustamante - Miguel Garc�a Bola�os <br> Mart�n Monroy R�os - Oscar Ballesteros Pacheco - Arturo Gonz�lez Villamizar</p>
                    <%--  </div>--%>
            </div>
        </div>
    </body>
</html> 
