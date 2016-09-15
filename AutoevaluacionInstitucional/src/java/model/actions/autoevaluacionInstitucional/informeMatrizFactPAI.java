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

public class informeMatrizFactPAI implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String bd = (String) session.getAttribute("bd");
        sqlController conSql = new sqlController();
        Result matrizFactores = null;

        String sql3 = "select c4.fid, c4.fnom, format(AVG(c4.cump3),1) as cumplimento_fact\n"
                + "    from (select c3.fid, c3.fnom, c3.cid, format(AVG(c3.cump2),1) as cump3\n"
                + "    from (select c2.fid, c2.fnom, c2.cid, c2.iid, format(AVG(c2.cump1),1) as cump2\n"
                + "	from (select c1.fid, c1.fnom, c1.cid, c1.iid, c1.pid, format(AVG(c1.cumplimiento),1) as cump1 \n"
                + "	from (select factor.id as fid, factor.nombre as fnom, caracteristica.id as cid,  indicador.id as iid, pregunta.id as pid, encuestahaspregunta.encuesta_id as eid, format(AVG(respuesta),1) as cumplimiento\n"
                + "	from factor	\n"
                + "	inner join caracteristica on caracteristica.factor_id = factor.id\n"
                + "	inner join indicador on indicador.caracteristica_id = caracteristica.id\n"
                + "	inner join instrumentohasindicador on \n"
                + "	(instrumentohasindicador.indicador_id = indicador.id AND instrumentohasindicador.instrumento_id='1')\n"
                + "	inner join pregunta on pregunta.indicador_id = indicador.id\n"
                + "	inner join encuestahaspregunta on (encuestahaspregunta.pregunta_id = pregunta.id or encuestahaspregunta.pregunta_id = pregunta.pregunta_padre)\n"
                + "	inner join resultadoevaluacion on resultadoevaluacion.pregunta_id = pregunta.id\n"
                + "     inner join encabezado on encabezado.id = resultadoevaluacion.encabezado_id "
                + "	where resultadoevaluacion.respuesta <> '0' and encabezado.encuesta_id = encuestahaspregunta.encuesta_id\n"
                + "	GROUP BY pregunta.id, encuestahaspregunta.encuesta_id ) \n"
                + "	as c1 GROUP BY c1.pid) \n"
                + "	as c2 GROUP BY c2.iid)\n"
                + "	as c3 GROUP BY c3.cid) as c4 GROUP BY c4.fid";
        matrizFactores = conSql.CargarSql2(sql3, bd);

        session.setAttribute("matrizFactores1", matrizFactores);
        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/informe/informeMatrizFactP.jsp";
        return url;
    }
}
