/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ususario
 */
@Entity
@Table(name = "muestra", catalog = "autoevaluacion", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Muestra.findAll", query = "SELECT m FROM Muestra m"),
    @NamedQuery(name = "Muestra.findById", query = "SELECT m FROM Muestra m WHERE m.id = :id"),
    @NamedQuery(name = "Muestra.findByFormula", query = "SELECT m FROM Muestra m WHERE m.formula = :formula")})
public class Muestra implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "formula")
    private String formula;
    @JoinColumn(name = "proceso_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Proceso procesoId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestradocente> muestradocenteList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestraadministrativo> muestraadministrativoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestradirector> muestradirectorList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestraegresado> muestraegresadoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestraagencia> muestraagenciaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestraestudiante> muestraestudianteList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestraempleador> muestraempleadorList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "muestraId")
    private List<Muestracriterio> muestracriterioList;

    public Muestra() {
    }

    public Muestra(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFormula() {
        return formula;
    }

    public void setFormula(String formula) {
        this.formula = formula;
    }

    public Proceso getProcesoId() {
        return procesoId;
    }

    public void setProcesoId(Proceso procesoId) {
        this.procesoId = procesoId;
    }

    @XmlTransient
    public List<Muestradocente> getMuestradocenteList() {
        return muestradocenteList;
    }

    public void setMuestradocenteList(List<Muestradocente> muestradocenteList) {
        this.muestradocenteList = muestradocenteList;
    }

    @XmlTransient
    public List<Muestraadministrativo> getMuestraadministrativoList() {
        return muestraadministrativoList;
    }

    public void setMuestraadministrativoList(List<Muestraadministrativo> muestraadministrativoList) {
        this.muestraadministrativoList = muestraadministrativoList;
    }

    @XmlTransient
    public List<Muestradirector> getMuestradirectorList() {
        return muestradirectorList;
    }

    public void setMuestradirectorList(List<Muestradirector> muestradirectorList) {
        this.muestradirectorList = muestradirectorList;
    }

    @XmlTransient
    public List<Muestraegresado> getMuestraegresadoList() {
        return muestraegresadoList;
    }

    public void setMuestraegresadoList(List<Muestraegresado> muestraegresadoList) {
        this.muestraegresadoList = muestraegresadoList;
    }

    @XmlTransient
    public List<Muestraagencia> getMuestraagenciaList() {
        return muestraagenciaList;
    }

    public void setMuestraagenciaList(List<Muestraagencia> muestraagenciaList) {
        this.muestraagenciaList = muestraagenciaList;
    }

    @XmlTransient
    public List<Muestraestudiante> getMuestraestudianteList() {
        return muestraestudianteList;
    }

    public void setMuestraestudianteList(List<Muestraestudiante> muestraestudianteList) {
        this.muestraestudianteList = muestraestudianteList;
    }

    @XmlTransient
    public List<Muestraempleador> getMuestraempleadorList() {
        return muestraempleadorList;
    }

    public void setMuestraempleadorList(List<Muestraempleador> muestraempleadorList) {
        this.muestraempleadorList = muestraempleadorList;
    }

    @XmlTransient
    public List<Muestracriterio> getMuestracriterioList() {
        return muestracriterioList;
    }

    public void setMuestracriterioList(List<Muestracriterio> muestracriterioList) {
        this.muestracriterioList = muestracriterioList;
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
        if (!(object instanceof Muestra)) {
            return false;
        }
        Muestra other = (Muestra) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Muestra[ id=" + id + " ]";
    }
    
}
