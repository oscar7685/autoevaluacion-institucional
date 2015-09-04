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
@Table(name = "muestraadministrativo", catalog = "autoevaluacion", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Muestraadministrativo.findAll", query = "SELECT m FROM Muestraadministrativo m"),
    @NamedQuery(name = "Muestraadministrativo.findById", query = "SELECT m FROM Muestraadministrativo m WHERE m.id = :id"),
    @NamedQuery(name = "Muestraadministrativo.findByConglomerado", query = "SELECT m FROM Muestraadministrativo m WHERE m.conglomerado = :conglomerado"),
    @NamedQuery(name = "Muestraadministrativo.findByMetodo", query = "SELECT m FROM Muestraadministrativo m WHERE m.metodo = :metodo")})
public class Muestraadministrativo implements Serializable {
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
    @JoinColumn(name = "administrativo_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Administrativo administrativoId;

    public Muestraadministrativo() {
    }

    public Muestraadministrativo(Integer id) {
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

    public Administrativo getAdministrativoId() {
        return administrativoId;
    }

    public void setAdministrativoId(Administrativo administrativoId) {
        this.administrativoId = administrativoId;
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
        if (!(object instanceof Muestraadministrativo)) {
            return false;
        }
        Muestraadministrativo other = (Muestraadministrativo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Muestraadministrativo[ id=" + id + " ]";
    }
    
}
