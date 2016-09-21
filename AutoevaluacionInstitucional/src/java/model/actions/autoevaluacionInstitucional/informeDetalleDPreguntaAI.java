/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.actions.autoevaluacionInstitucional;

import controller.sqlController;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import model.Action;

public class informeDetalleDPreguntaAI implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String bd = (String) session.getAttribute("bd");
        String idP = (String) request.getParameter("idP");
        String idE = (String) request.getParameter("idE");
        sqlController conSql = new sqlController();
        Result detallePreguntaD = null;
        String sql2 = "";
        if (idE.equals("1")) {
            sql2 = "SELECT pregunta.pregunta, encuesta.nombre, \n"
                    + "format((sum( case when respuesta='1'  THEN 1 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='2'  THEN 2 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='3'  THEN 3 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='4'  THEN 4 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='5'  THEN 5 ELSE 0 end))/ \n"
                    + " (count(case when (respuesta ='1' or respuesta='2' or respuesta='3' or respuesta='4' or respuesta='5') THEN 1 else null end)),1), \n"
                    + " pregunta.codigo, encuesta.id, \n"
                    + " count( CASE WHEN respuesta = '0' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '1' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '2' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '3' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '4' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '5' THEN 1 ELSE null end) , \n"
                    + " padre.pregunta,        \n"
                    + " pregunta.id, programa.metodologia, programa.tipo         \n"
                    + " FROM `resultadoevaluacion`  \n"
                    + " INNER JOIN encabezado ON encabezado.id = resultadoevaluacion.encabezado_id \n"
                    + " inner join estudiante on estudiante.persona_id = encabezado.persona_id\n"
                    + " inner join programa on programa.id = estudiante.programa_id\n"
                    + " INNER JOIN encuesta ON encuesta.id = encabezado.encuesta_id \n"
                    + " INNER JOIN pregunta ON pregunta.id = resultadoevaluacion.pregunta_id \n"
                    + " LEFT JOIN pregunta as padre on pregunta.pregunta_padre = padre.id       \n"
                    + " WHERE pregunta.id = " + idP + " and encuesta.id = " + idE + " \n"
                    + " GROUP BY programa.metodologia, programa.tipo\n"
                    + " order by programa.metodologia, programa.tipo";

        } else if (idE.equals("2")) {
            sql2 = "SELECT pregunta.pregunta, encuesta.nombre, \n"
                    + "format((sum( case when respuesta='1'  THEN 1 ELSE 0 end)+ \n"
                    + "sum( case when respuesta='2'  THEN 2 ELSE 0 end)+ \n"
                    + "sum( case when respuesta='3'  THEN 3 ELSE 0 end)+ \n"
                    + "sum( case when respuesta='4'  THEN 4 ELSE 0 end)+ \n"
                    + "sum( case when respuesta='5'  THEN 5 ELSE 0 end))/ \n"
                    + "(count(case when (respuesta ='1' or respuesta='2' or respuesta='3' or respuesta='4' or respuesta='5') THEN 1 else null end)),1), \n"
                    + " pregunta.codigo, encuesta.id, \n"
                    + " count( CASE WHEN respuesta = '0' THEN 1 ELSE null end) AS ceros, \n"
                    + " count( CASE WHEN respuesta = '1' THEN 1 ELSE null end) as unos, \n"
                    + " count( CASE WHEN respuesta = '2' THEN 1 ELSE null end) as dos, \n"
                    + " count( CASE WHEN respuesta = '3' THEN 1 ELSE null end) as tres,\n"
                    + " count( CASE WHEN respuesta = '4' THEN 1 ELSE null end) as cuatros, \n"
                    + " count( CASE WHEN respuesta = '5' THEN 1 ELSE null end) as cincos, \n"
                    + " padre.pregunta,        \n"
                    + " pregunta.id, docente.tipo         \n"
                    + " FROM `resultadoevaluacion`  \n"
                    + " INNER JOIN encabezado ON encabezado.id = resultadoevaluacion.encabezadO_id \n"
                    + " inner join docente on docente.persona_id = encabezado.persona_id\n"
                    + " INNER JOIN encuesta ON encuesta.id = encabezado.encuesta_id \n"
                    + " INNER JOIN pregunta ON pregunta.id = resultadoevaluacion.pregunta_id \n"
                    + " LEFT JOIN pregunta as padre on pregunta.pregunta_padre = padre.id       \n"
                    + " WHERE pregunta.id = "+idP+" and encuesta.id = 2 \n"
                    + " GROUP BY docente.tipo "
                    + " order by docente.tipo ";
        } else if (idE.equals("3")) {
            sql2 = "SELECT pregunta.pregunta, encuesta.nombre, \n"
                    + "format((sum( case when respuesta='1'  THEN 1 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='2'  THEN 2 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='3'  THEN 3 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='4'  THEN 4 ELSE 0 end)+ \n"
                    + " sum( case when respuesta='5'  THEN 5 ELSE 0 end))/ \n"
                    + " (count(case when (respuesta ='1' or respuesta='2' or respuesta='3' or respuesta='4' or respuesta='5') THEN 1 else null end)),1), \n"
                    + " pregunta.codigo, encuesta.id, \n"
                    + " count( CASE WHEN respuesta = '0' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '1' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '2' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '3' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '4' THEN 1 ELSE null end) , \n"
                    + " count( CASE WHEN respuesta = '5' THEN 1 ELSE null end) , \n"
                    + " padre.pregunta,       \n"
                    + " pregunta.id, programa.metodologia, programa.tipo         \n"
                    + " FROM `resultadoevaluacion`  \n"
                    + " INNER JOIN encabezado ON encabezado.id = resultadoevaluacion.encabezado_id \n"
                    + " inner join egresado on egresado.persona_id = encabezado.persona_id\n"
                    + " inner join programa on programa.id = egresado.programa_id\n"
                    + " INNER JOIN encuesta ON encuesta.id = encabezado.encuesta_id \n"
                    + " INNER JOIN pregunta ON pregunta.id = resultadoevaluacion.pregunta_id \n"
                    + " LEFT JOIN pregunta as padre on pregunta.pregunta_padre = padre.id       \n"
                    + " WHERE pregunta.id = " + idP + " and encuesta.id = " + idE + " \n"
                    + " GROUP BY	programa.metodologia, programa.tipo\n"
                    + " order by programa.metodologia, programa.tipo";
        }

        detallePreguntaD = conSql.CargarSql2(sql2, bd);
        session.setAttribute("detallePreguntaD", detallePreguntaD);
        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/informe/informeDetallePreguntaD.jsp";
        return url;
    }
}
