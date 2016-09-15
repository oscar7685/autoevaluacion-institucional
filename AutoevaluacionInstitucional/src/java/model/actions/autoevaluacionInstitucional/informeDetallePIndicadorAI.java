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

public class informeDetallePIndicadorAI implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String bd = (String) session.getAttribute("bd");
        String idI = (String) request.getParameter("idI");
        sqlController conSql = new sqlController();
        String idDocumental = "2";
        String idNumerico = "3";

        Result detalleIndicador = null;
        String sql2 = "select c1.fid, c1.fnom, c1.cid, c1.cnom, c1.iid,  c1.inom, c1.pid, c1.pcod, c1.pnom, c1.ptipo, c1.ppadre, format(AVG(c1.cumplimiento),1), sum(c1.n0), sum(c1.n1), sum(c1.n2), sum(c1.n3), sum(c1.n4), sum(c1.n5) from ( \n"
                + " select factor.id as fid, factor.nombre as fnom, caracteristica.id as cid, caracteristica.nombre as cnom,  indicador.id as iid, indicador.nombre as inom,  \n"
                + " pregunta.id as pid, pregunta.codigo as pcod, pregunta.pregunta as pnom, pregunta.tipo as ptipo, padre.pregunta as ppadre, encuestahaspregunta.encuesta_id as eid,  \n"
                + " format((sum( case when respuesta='1'  THEN 1 ELSE 0 end)+ \n"
                + " sum( case when respuesta='2'  THEN 2 ELSE 0 end)+ \n"
                + " sum( case when respuesta='3'  THEN 3 ELSE 0 end)+ \n"
                + " sum( case when respuesta='4'  THEN 4 ELSE 0 end)+ \n"
                + " sum( case when respuesta='5'  THEN 5 ELSE 0 end))/ \n"
                + " (count(case when (respuesta ='1' or respuesta='2' or respuesta='3' or respuesta='4' or respuesta='5') THEN 1 else null end)),1) as cumplimiento, \n"
                + " count( CASE WHEN respuesta = '0' THEN 1 ELSE null end) as n0,  \n"
                + " count( CASE WHEN respuesta = '1' THEN 1 ELSE null end) as n1,  \n"
                + " count( CASE WHEN respuesta = '2' THEN 1 ELSE null end) as n2,  \n"
                + " count( CASE WHEN respuesta = '3' THEN 1 ELSE null end) as n3,  \n"
                + " count( CASE WHEN respuesta = '4' THEN 1 ELSE null end) as n4,  \n"
                + " count( CASE WHEN respuesta = '5' THEN 1 ELSE null end) as n5  \n"
                + " from factor	 \n"
                + " inner join caracteristica on caracteristica.factor_id = factor.id \n"
                + " inner join indicador on indicador.caracteristica_id = caracteristica.id \n"
                + " inner join instrumentohasindicador on  \n"
                + " (instrumentohasindicador.indicador_id = indicador.id AND instrumentohasindicador.instrumento_id='1') \n"
                + " inner join pregunta on pregunta.indicador_id = indicador.id \n"
                + " inner join encuestahaspregunta on (encuestahaspregunta.pregunta_id = pregunta.id or encuestahaspregunta.pregunta_id = pregunta.pregunta_padre) \n"
                + " inner join resultadoevaluacion on resultadoevaluacion.pregunta_id = pregunta.id \n"
                + " inner join encabezado on encabezado.id = resultadoevaluacion.encabezado_id "
                + " left join pregunta as padre on pregunta.pregunta_padre = padre.id \n"
                + " where indicador.id = '"+idI+"' and  encabezado.encuesta_id = encuestahaspregunta.encuesta_id\n"
                + " GROUP BY pregunta.id, encuestahaspregunta.encuesta_id ) as c1 GROUP BY c1.pid";
        detalleIndicador = conSql.CargarSql2(sql2, bd);
        session.setAttribute("detalleIndicador", detalleIndicador);

        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/informe/informeDetalleIndicadorP.jsp";
        return url;
    }
}
