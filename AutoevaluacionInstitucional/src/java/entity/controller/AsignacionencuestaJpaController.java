/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.controller;

import entity.Asignacionencuesta;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import entity.Proceso;
import entity.Fuente;
import entity.Encuesta;
import entity.controller.exceptions.NonexistentEntityException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Ususario
 */
public class AsignacionencuestaJpaController implements Serializable {

    public AsignacionencuestaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Asignacionencuesta asignacionencuesta) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Proceso procesoId = asignacionencuesta.getProcesoId();
            if (procesoId != null) {
                procesoId = em.getReference(procesoId.getClass(), procesoId.getId());
                asignacionencuesta.setProcesoId(procesoId);
            }
            Fuente fuenteId = asignacionencuesta.getFuenteId();
            if (fuenteId != null) {
                fuenteId = em.getReference(fuenteId.getClass(), fuenteId.getId());
                asignacionencuesta.setFuenteId(fuenteId);
            }
            Encuesta encuestaId = asignacionencuesta.getEncuestaId();
            if (encuestaId != null) {
                encuestaId = em.getReference(encuestaId.getClass(), encuestaId.getId());
                asignacionencuesta.setEncuestaId(encuestaId);
            }
            em.persist(asignacionencuesta);
            if (procesoId != null) {
                procesoId.getAsignacionencuestaList().add(asignacionencuesta);
                procesoId = em.merge(procesoId);
            }
            if (fuenteId != null) {
                fuenteId.getAsignacionencuestaList().add(asignacionencuesta);
                fuenteId = em.merge(fuenteId);
            }
            if (encuestaId != null) {
                encuestaId.getAsignacionencuestaList().add(asignacionencuesta);
                encuestaId = em.merge(encuestaId);
            }
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Asignacionencuesta asignacionencuesta) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Asignacionencuesta persistentAsignacionencuesta = em.find(Asignacionencuesta.class, asignacionencuesta.getId());
            Proceso procesoIdOld = persistentAsignacionencuesta.getProcesoId();
            Proceso procesoIdNew = asignacionencuesta.getProcesoId();
            Fuente fuenteIdOld = persistentAsignacionencuesta.getFuenteId();
            Fuente fuenteIdNew = asignacionencuesta.getFuenteId();
            Encuesta encuestaIdOld = persistentAsignacionencuesta.getEncuestaId();
            Encuesta encuestaIdNew = asignacionencuesta.getEncuestaId();
            if (procesoIdNew != null) {
                procesoIdNew = em.getReference(procesoIdNew.getClass(), procesoIdNew.getId());
                asignacionencuesta.setProcesoId(procesoIdNew);
            }
            if (fuenteIdNew != null) {
                fuenteIdNew = em.getReference(fuenteIdNew.getClass(), fuenteIdNew.getId());
                asignacionencuesta.setFuenteId(fuenteIdNew);
            }
            if (encuestaIdNew != null) {
                encuestaIdNew = em.getReference(encuestaIdNew.getClass(), encuestaIdNew.getId());
                asignacionencuesta.setEncuestaId(encuestaIdNew);
            }
            asignacionencuesta = em.merge(asignacionencuesta);
            if (procesoIdOld != null && !procesoIdOld.equals(procesoIdNew)) {
                procesoIdOld.getAsignacionencuestaList().remove(asignacionencuesta);
                procesoIdOld = em.merge(procesoIdOld);
            }
            if (procesoIdNew != null && !procesoIdNew.equals(procesoIdOld)) {
                procesoIdNew.getAsignacionencuestaList().add(asignacionencuesta);
                procesoIdNew = em.merge(procesoIdNew);
            }
            if (fuenteIdOld != null && !fuenteIdOld.equals(fuenteIdNew)) {
                fuenteIdOld.getAsignacionencuestaList().remove(asignacionencuesta);
                fuenteIdOld = em.merge(fuenteIdOld);
            }
            if (fuenteIdNew != null && !fuenteIdNew.equals(fuenteIdOld)) {
                fuenteIdNew.getAsignacionencuestaList().add(asignacionencuesta);
                fuenteIdNew = em.merge(fuenteIdNew);
            }
            if (encuestaIdOld != null && !encuestaIdOld.equals(encuestaIdNew)) {
                encuestaIdOld.getAsignacionencuestaList().remove(asignacionencuesta);
                encuestaIdOld = em.merge(encuestaIdOld);
            }
            if (encuestaIdNew != null && !encuestaIdNew.equals(encuestaIdOld)) {
                encuestaIdNew.getAsignacionencuestaList().add(asignacionencuesta);
                encuestaIdNew = em.merge(encuestaIdNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = asignacionencuesta.getId();
                if (findAsignacionencuesta(id) == null) {
                    throw new NonexistentEntityException("The asignacionencuesta with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Asignacionencuesta asignacionencuesta;
            try {
                asignacionencuesta = em.getReference(Asignacionencuesta.class, id);
                asignacionencuesta.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The asignacionencuesta with id " + id + " no longer exists.", enfe);
            }
            Proceso procesoId = asignacionencuesta.getProcesoId();
            if (procesoId != null) {
                procesoId.getAsignacionencuestaList().remove(asignacionencuesta);
                procesoId = em.merge(procesoId);
            }
            Fuente fuenteId = asignacionencuesta.getFuenteId();
            if (fuenteId != null) {
                fuenteId.getAsignacionencuestaList().remove(asignacionencuesta);
                fuenteId = em.merge(fuenteId);
            }
            Encuesta encuestaId = asignacionencuesta.getEncuestaId();
            if (encuestaId != null) {
                encuestaId.getAsignacionencuestaList().remove(asignacionencuesta);
                encuestaId = em.merge(encuestaId);
            }
            em.remove(asignacionencuesta);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Asignacionencuesta> findAsignacionencuestaEntities() {
        return findAsignacionencuestaEntities(true, -1, -1);
    }

    public List<Asignacionencuesta> findAsignacionencuestaEntities(int maxResults, int firstResult) {
        return findAsignacionencuestaEntities(false, maxResults, firstResult);
    }

    private List<Asignacionencuesta> findAsignacionencuestaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Asignacionencuesta.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Asignacionencuesta findAsignacionencuesta(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Asignacionencuesta.class, id);
        } finally {
            em.close();
        }
    }

    public int getAsignacionencuestaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Asignacionencuesta> rt = cq.from(Asignacionencuesta.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
