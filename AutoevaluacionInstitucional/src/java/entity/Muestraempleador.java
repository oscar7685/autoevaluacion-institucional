/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Ususario
 */
@Entity
@Table(name = "muestraempleador", catalog = "autoevaluacion", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Muestraempleador.findAll", query = "SELECT m FROM Muestraempleador m"),
    @NamedQuery(name = "Muestraempleador.findById", query = "SELECT m FROM Muestraempleador m WHERE m.id = :id"),
    @NamedQuery(name = "Muestraempleador.findByConglomerado", query = "SELECT m FROM Muestraempleador m WHERE m.conglomerado = :conglomerado"),
    @NamedQuery(name = "Muestraempleador.findByMetodo", query = "SELECT m FROM Muestraempleador m WHERE m.metodo = :metodo")})
public class Muestraempleador implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "conglomerado")
    private String conglomerado;
    @Column(name = "metodo")
    private String metodo;
    @JoinColumn(name = "muestra_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Muestra muestraId;
    @JoinColumn(name = "empleador_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Empleador empleadorId;

    public Muestraempleador() {
    }

    public Muestraempleador(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConglomerado() {
        return conglomerado;
    }

    public void setConglomerado(String conglomerado) {
        this.conglomerado = conglomerado;
    }

    public String getMetodo() {
        return metodo;
    }

    public void setMetodo(String metodo) {
        this.metodo = metodo;
    }

    public Muestra getMuestraId() {
        return muestraId;
    }

    public void setMuestraId(Muestra muestraId) {
        this.muestraId = muestraId;
    }

    public Empleador getEmpleadorId() {
        return empleadorId;
    }

    public void setEmpleadorId(Empleador empleadorId) {
        this.empleadorId = empleadorId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Muestraempleador)) {
            return false;
        }
        Muestraempleador other = (Muestraempleador) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Muestraempleador[ id=" + id + " ]";
    }
    
}
