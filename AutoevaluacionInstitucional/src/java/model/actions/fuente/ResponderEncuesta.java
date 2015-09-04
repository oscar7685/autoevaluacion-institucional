/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.actions.fuente;

import controller.sqlController;
import entity.Encuesta;
import entity.Persona;
import entity.Proceso;
import entity.controller.EncuestaJpaController;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import model.Action;

public class ResponderEncuesta implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String id = request.getParameter("idE");
        EncuestaJpaController conEncuesta = new EncuestaJpaController();
        int idEncuesta = Integer.parseInt(id);
        Encuesta e = conEncuesta.findEncuesta(idEncuesta);
        session.setAttribute("encuesta", e);

        String url = "/WEB-INF/vista/fuente/responderEncuesta.jsp";
        return url;
    }
}
