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
import javax.persistence.ManyToMany;
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
@Table(name = "pregunta", catalog = "autoevaluacion", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pregunta.findAll", query = "SELECT p FROM Pregunta p"),
    @NamedQuery(name = "Pregunta.findById", query = "SELECT p FROM Pregunta p WHERE p.id = :id"),
    @NamedQuery(name = "Pregunta.findByPregunta", query = "SELECT p FROM Pregunta p WHERE p.pregunta = :pregunta"),
    @NamedQuery(name = "Pregunta.findByTipo", query = "SELECT p FROM Pregunta p WHERE p.tipo = :tipo"),
    @NamedQuery(name = "Pregunta.findByCodigo", query = "SELECT p FROM Pregunta p WHERE p.codigo = :codigo")})
public class Pregunta implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "pregunta")
    private String pregunta;
    @Basic(optional = false)
    @Column(name = "tipo")
    private String tipo;
    @Column(name = "codigo")
    private String codigo;
    @ManyToMany(mappedBy = "preguntaList")
    private List<Encuesta> encuestaList;
    @OneToMany(mappedBy = "preguntaPadre")
    private List<Pregunta> preguntaList;
    @JoinColumn(name = "pregunta_padre", referencedColumnName = "id")
    @ManyToOne
    private Pregunta preguntaPadre;
    @JoinColumn(name = "indicador_id", referencedColumnName = "id")
    @ManyToOne
    private Indicador indicadorId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "preguntaId")
    private List<Resultadoevaluacion> resultadoevaluacionList;

    public Pregunta() {
    }

    public Pregunta(Integer id) {
        this.id = id;
    }

    public Pregunta(Integer id, String pregunta, String tipo) {
        this.id = id;
        this.pregunta = pregunta;
        this.tipo = tipo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    @XmlTransient
    public List<Encuesta> getEncuestaList() {
        return encuestaList;
    }

    public void setEncuestaList(List<Encuesta> encuestaList) {
        this.encuestaList = encuestaList;
    }

    @XmlTransient
    public List<Pregunta> getPreguntaList() {
        return preguntaList;
    }

    public void setPreguntaList(List<Pregunta> preguntaList) {
        this.preguntaList = preguntaList;
    }

    public Pregunta getPreguntaPadre() {
        return preguntaPadre;
    }

    public void setPreguntaPadre(Pregunta preguntaPadre) {
        this.preguntaPadre = preguntaPadre;
    }

    public Indicador getIndicadorId() {
        return indicadorId;
    }

    public void setIndicadorId(Indicador indicadorId) {
        this.indicadorId = indicadorId;
    }

    @XmlTransient
    public List<Resultadoevaluacion> getResultadoevaluacionList() {
        return resultadoevaluacionList;
    }

    public void setResultadoevaluacionList(List<Resultadoevaluacion> resultadoevaluacionList) {
        this.resultadoevaluacionList = resultadoevaluacionList;
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
        if (!(object instanceof Pregunta)) {
            return false;
        }
        Pregunta other = (Pregunta) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Pregunta[ id=" + id + " ]";
    }
    
}
