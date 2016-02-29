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
        String idDocumental="2";
        String idNumerico="3";
        
        Result detalleIndicador = null;
        String sql2 = "SELECT indicador.id, indicador.nombre AS ino, pregunta.id AS pi, pregunta.pregunta, "
                + "format((sum( case when respuesta='1'  THEN 1 ELSE 0 end)+ "
                + "sum( case when respuesta='2'  THEN 2 ELSE 0 end)+ "
                + "sum( case when respuesta='3'  THEN 3 ELSE 0 end)+ "
                + "sum( case when respuesta='4'  THEN 4 ELSE 0 end)+ "
                + "sum( case when respuesta='5'  THEN 5 ELSE 0 end))/ "
                + "(count(case when (respuesta ='1' or respuesta='2' or respuesta='3' or respuesta='4' or respuesta='5') THEN 1 else null end)),1), "
                + "caracteristica.id, pregunta.codigo, indicador.codigo, "
                + "count( CASE WHEN respuesta = '0' THEN 1 ELSE null end) as '0', "
                + "count( CASE WHEN respuesta = '1' THEN 1 ELSE null end) as '1', "
                + "count( CASE WHEN respuesta = '2' THEN 1 ELSE null end) as '2', "
                + "count( CASE WHEN respuesta = '3' THEN 1 ELSE null end) as '3', "
                + "count( CASE WHEN respuesta = '4' THEN 1 ELSE null end) as '4', "
                + "count( CASE WHEN respuesta = '5' THEN 1 ELSE null end) as '5', "
                + "pregunta.tipo, "
                + "padre.pregunta "
                + "FROM resultadoevaluacion "
                + "INNER JOIN pregunta ON pregunta.id=resultadoevaluacion.pregunta_id "
                + "INNER JOIN indicador ON indicador.id=pregunta.indicador_id "
                + "INNER JOIN caracteristica ON caracteristica.id = indicador.caracteristica_id "
                + "left join pregunta as padre on pregunta.pregunta_padre = padre.id "
                + "WHERE (pregunta.tipo = 'elegir 1-5' or pregunta.tipo = 'item') "
                + "AND indicador.id =" + idI + " "
                + "GROUP BY pregunta.id";
        detalleIndicador = conSql.CargarSql2(sql2, bd);
        session.setAttribute("detalleIndicador", detalleIndicador);

        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/informe/informeDetalleIndicadorP.jsp";
        return url;
    }
}
