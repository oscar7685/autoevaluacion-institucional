/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.actions.autoevaluacionInstitucional;

import controller.sqlController;
import entity.Proceso;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import model.Action;

/**
 *
 * @author Arturo González
 */
public class asignarMuestraAI implements Action {

    public String procesar(HttpServletRequest request)
            throws IOException, ServletException {


        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/muestra/asignar.jsp";
        HttpSession session = request.getSession();

        sqlController conSql = new sqlController();
        Proceso proceso = (Proceso) session.getAttribute("proceso");
        int idProceso = proceso.getId();
        String bd = (String) session.getAttribute("bd");

        try {

            Result rs = null;
            String sql = "Select* from muestra where proceso_id = " + idProceso + "";
            rs = conSql.CargarSql2(sql, bd);


            if (rs.getRowCount() != 0) {
                session.setAttribute("aux", 0);
                // session.setAttribute("muestra", rs);


            } else {
                session.setAttribute("aux", 1);

            }


        } catch (Error ex) {
            //  Logger.getLogger(fontController.class.getName()).log(Level.SEVERE, null, ex);
        }


        conSql.cerrarConexion();


        return url;
    }
}
