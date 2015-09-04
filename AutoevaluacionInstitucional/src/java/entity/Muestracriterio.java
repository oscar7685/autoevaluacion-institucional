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
@Table(name = "muestracriterio", catalog = "autoevaluacion", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Muestracriterio.findAll", query = "SELECT m FROM Muestracriterio m"),
    @NamedQuery(name = "Muestracriterio.findById", query = "SELECT m FROM Muestracriterio m WHERE m.id = :id")})
public class Muestracriterio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "persona_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Persona personaId;
    @JoinColumn(name = "muestra_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Muestra muestraId;
    @JoinColumn(name = "fuente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Fuente fuenteId;
    @JoinColumn(name = "descripcioncriterio_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Descripcioncriterio descripcioncriterioId;

    public Muestracriterio() {
    }

    public Muestracriterio(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Persona getPersonaId() {
        return personaId;
    }

    public void setPersonaId(Persona personaId) {
        this.personaId = personaId;
    }

    public Muestra getMuestraId() {
        return muestraId;
    }

    public void setMuestraId(Muestra muestraId) {
        this.muestraId = muestraId;
    }

    public Fuente getFuenteId() {
        return fuenteId;
    }

    public void setFuenteId(Fuente fuenteId) {
        this.fuenteId = fuenteId;
    }

    public Descripcioncriterio getDescripcioncriterioId() {
        return descripcioncriterioId;
    }

    public void setDescripcioncriterioId(Descripcioncriterio descripcioncriterioId) {
        this.descripcioncriterioId = descripcioncriterioId;
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
        if (!(object instanceof Muestracriterio)) {
            return false;
        }
        Muestracriterio other = (Muestracriterio) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Muestracriterio[ id=" + id + " ]";
    }
    
}
