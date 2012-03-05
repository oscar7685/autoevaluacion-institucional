/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Usuario
 */
@Entity
@Table(name = "empleador")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empleador.findAll", query = "SELECT e FROM Empleador e"),
    @NamedQuery(name = "Empleador.findById", query = "SELECT e FROM Empleador e WHERE e.id = :id"),
    @NamedQuery(name = "Empleador.findByDescripcion", query = "SELECT e FROM Empleador e WHERE e.descripcion = :descripcion")})
public class Empleador implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "descripcion")
    private String descripcion;
    @JoinColumn(name = "persona_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Persona personaId;
    @JoinColumn(name = "sectorempresarial_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Sectorempresarial sectorempresarialId;
    @JoinColumn(name = "fuente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Fuente fuenteId;

    public Empleador() {
    }

    public Empleador(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Persona getPersonaId() {
        return personaId;
    }

    public void setPersonaId(Persona personaId) {
        this.personaId = personaId;
    }

    public Sectorempresarial getSectorempresarialId() {
        return sectorempresarialId;
    }

    public void setSectorempresarialId(Sectorempresarial sectorempresarialId) {
        this.sectorempresarialId = sectorempresarialId;
    }

    public Fuente getFuenteId() {
        return fuenteId;
    }

    public void setFuenteId(Fuente fuenteId) {
        this.fuenteId = fuenteId;
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
        if (!(object instanceof Empleador)) {
            return false;
        }
        Empleador other = (Empleador) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Empleador[ id=" + id + " ]";
    }
    
}
