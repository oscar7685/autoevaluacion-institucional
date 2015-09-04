/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity.controller;

import entity.Egresado;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import entity.Programa;
import entity.Persona;
import entity.Fuente;
import entity.Muestraegresado;
import entity.controller.exceptions.IllegalOrphanException;
import entity.controller.exceptions.NonexistentEntityException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Ususario
 */
public class EgresadoJpaController implements Serializable {

    public EgresadoJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Egresado egresado) {
        if (egresado.getMuestraegresadoList() == null) {
            egresado.setMuestraegresadoList(new ArrayList<Muestraegresado>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Programa programaId = egresado.getProgramaId();
            if (programaId != null) {
                programaId = em.getReference(programaId.getClass(), programaId.getId());
                egresado.setProgramaId(programaId);
            }
            Persona personaId = egresado.getPersonaId();
            if (personaId != null) {
                personaId = em.getReference(personaId.getClass(), personaId.getId());
                egresado.setPersonaId(personaId);
            }
            Fuente fuenteId = egresado.getFuenteId();
            if (fuenteId != null) {
                fuenteId = em.getReference(fuenteId.getClass(), fuenteId.getId());
                egresado.setFuenteId(fuenteId);
            }
            List<Muestraegresado> attachedMuestraegresadoList = new ArrayList<Muestraegresado>();
            for (Muestraegresado muestraegresadoListMuestraegresadoToAttach : egresado.getMuestraegresadoList()) {
                muestraegresadoListMuestraegresadoToAttach = em.getReference(muestraegresadoListMuestraegresadoToAttach.getClass(), muestraegresadoListMuestraegresadoToAttach.getId());
                attachedMuestraegresadoList.add(muestraegresadoListMuestraegresadoToAttach);
            }
            egresado.setMuestraegresadoList(attachedMuestraegresadoList);
            em.persist(egresado);
            if (programaId != null) {
                programaId.getEgresadoList().add(egresado);
                programaId = em.merge(programaId);
            }
            if (personaId != null) {
                personaId.getEgresadoList().add(egresado);
                personaId = em.merge(personaId);
            }
            if (fuenteId != null) {
                fuenteId.getEgresadoList().add(egresado);
                fuenteId = em.merge(fuenteId);
            }
            for (Muestraegresado muestraegresadoListMuestraegresado : egresado.getMuestraegresadoList()) {
                Egresado oldEgresadoIdOfMuestraegresadoListMuestraegresado = muestraegresadoListMuestraegresado.getEgresadoId();
                muestraegresadoListMuestraegresado.setEgresadoId(egresado);
                muestraegresadoListMuestraegresado = em.merge(muestraegresadoListMuestraegresado);
                if (oldEgresadoIdOfMuestraegresadoListMuestraegresado != null) {
                    oldEgresadoIdOfMuestraegresadoListMuestraegresado.getMuestraegresadoList().remove(muestraegresadoListMuestraegresado);
                    oldEgresadoIdOfMuestraegresadoListMuestraegresado = em.merge(oldEgresadoIdOfMuestraegresadoListMuestraegresado);
                }
            }
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Egresado egresado) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Egresado persistentEgresado = em.find(Egresado.class, egresado.getId());
            Programa programaIdOld = persistentEgresado.getProgramaId();
            Programa programaIdNew = egresado.getProgramaId();
            Persona personaIdOld = persistentEgresado.getPersonaId();
            Persona personaIdNew = egresado.getPersonaId();
            Fuente fuenteIdOld = persistentEgresado.getFuenteId();
            Fuente fuenteIdNew = egresado.getFuenteId();
            List<Muestraegresado> muestraegresadoListOld = persistentEgresado.getMuestraegresadoList();
            List<Muestraegresado> muestraegresadoListNew = egresado.getMuestraegresadoList();
            List<String> illegalOrphanMessages = null;
            for (Muestraegresado muestraegresadoListOldMuestraegresado : muestraegresadoListOld) {
                if (!muestraegresadoListNew.contains(muestraegresadoListOldMuestraegresado)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Muestraegresado " + muestraegresadoListOldMuestraegresado + " since its egresadoId field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (programaIdNew != null) {
                programaIdNew = em.getReference(programaIdNew.getClass(), programaIdNew.getId());
                egresado.setProgramaId(programaIdNew);
            }
            if (personaIdNew != null) {
                personaIdNew = em.getReference(personaIdNew.getClass(), personaIdNew.getId());
                egresado.setPersonaId(personaIdNew);
            }
            if (fuenteIdNew != null) {
                fuenteIdNew = em.getReference(fuenteIdNew.getClass(), fuenteIdNew.getId());
                egresado.setFuenteId(fuenteIdNew);
            }
            List<Muestraegresado> attachedMuestraegresadoListNew = new ArrayList<Muestraegresado>();
            for (Muestraegresado muestraegresadoListNewMuestraegresadoToAttach : muestraegresadoListNew) {
                muestraegresadoListNewMuestraegresadoToAttach = em.getReference(muestraegresadoListNewMuestraegresadoToAttach.getClass(), muestraegresadoListNewMuestraegresadoToAttach.getId());
                attachedMuestraegresadoListNew.add(muestraegresadoListNewMuestraegresadoToAttach);
            }
            muestraegresadoListNew = attachedMuestraegresadoListNew;
            egresado.setMuestraegresadoList(muestraegresadoListNew);
            egresado = em.merge(egresado);
            if (programaIdOld != null && !programaIdOld.equals(programaIdNew)) {
                programaIdOld.getEgresadoList().remove(egresado);
                programaIdOld = em.merge(programaIdOld);
            }
            if (programaIdNew != null && !programaIdNew.equals(programaIdOld)) {
                programaIdNew.getEgresadoList().add(egresado);
                programaIdNew = em.merge(programaIdNew);
            }
            if (personaIdOld != null && !personaIdOld.equals(personaIdNew)) {
                personaIdOld.getEgresadoList().remove(egresado);
                personaIdOld = em.merge(personaIdOld);
            }
            if (personaIdNew != null && !personaIdNew.equals(personaIdOld)) {
                personaIdNew.getEgresadoList().add(egresado);
                personaIdNew = em.merge(personaIdNew);
            }
            if (fuenteIdOld != null && !fuenteIdOld.equals(fuenteIdNew)) {
                fuenteIdOld.getEgresadoList().remove(egresado);
                fuenteIdOld = em.merge(fuenteIdOld);
            }
            if (fuenteIdNew != null && !fuenteIdNew.equals(fuenteIdOld)) {
                fuenteIdNew.getEgresadoList().add(egresado);
                fuenteIdNew = em.merge(fuenteIdNew);
            }
            for (Muestraegresado muestraegresadoListNewMuestraegresado : muestraegresadoListNew) {
                if (!muestraegresadoListOld.contains(muestraegresadoListNewMuestraegresado)) {
                    Egresado oldEgresadoIdOfMuestraegresadoListNewMuestraegresado = muestraegresadoListNewMuestraegresado.getEgresadoId();
                    muestraegresadoListNewMuestraegresado.setEgresadoId(egresado);
                    muestraegresadoListNewMuestraegresado = em.merge(muestraegresadoListNewMuestraegresado);
                    if (oldEgresadoIdOfMuestraegresadoListNewMuestraegresado != null && !oldEgresadoIdOfMuestraegresadoListNewMuestraegresado.equals(egresado)) {
                        oldEgresadoIdOfMuestraegresadoListNewMuestraegresado.getMuestraegresadoList().remove(muestraegresadoListNewMuestraegresado);
                        oldEgresadoIdOfMuestraegresadoListNewMuestraegresado = em.merge(oldEgresadoIdOfMuestraegresadoListNewMuestraegresado);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = egresado.getId();
                if (findEgresado(id) == null) {
                    throw new NonexistentEntityException("The egresado with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Egresado egresado;
            try {
                egresado = em.getReference(Egresado.class, id);
                egresado.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The egresado with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Muestraegresado> muestraegresadoListOrphanCheck = egresado.getMuestraegresadoList();
            for (Muestraegresado muestraegresadoListOrphanCheckMuestraegresado : muestraegresadoListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Egresado (" + egresado + ") cannot be destroyed since the Muestraegresado " + muestraegresadoListOrphanCheckMuestraegresado + " in its muestraegresadoList field has a non-nullable egresadoId field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Programa programaId = egresado.getProgramaId();
            if (programaId != null) {
                programaId.getEgresadoList().remove(egresado);
                programaId = em.merge(programaId);
            }
            Persona personaId = egresado.getPersonaId();
            if (personaId != null) {
                personaId.getEgresadoList().remove(egresado);
                personaId = em.merge(personaId);
            }
            Fuente fuenteId = egresado.getFuenteId();
            if (fuenteId != null) {
                fuenteId.getEgresadoList().remove(egresado);
                fuenteId = em.merge(fuenteId);
            }
            em.remove(egresado);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Egresado> findEgresadoEntities() {
        return findEgresadoEntities(true, -1, -1);
    }

    public List<Egresado> findEgresadoEntities(int maxResults, int firstResult) {
        return findEgresadoEntities(false, maxResults, firstResult);
    }

    private List<Egresado> findEgresadoEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Egresado.class));
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

    public Egresado findEgresado(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Egresado.class, id);
        } finally {
            em.close();
        }
    }

    public int getEgresadoCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Egresado> rt = cq.from(Egresado.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
