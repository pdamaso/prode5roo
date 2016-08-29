// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prode5digos.domain;

import com.prode5digos.domain.Fecha;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Fecha_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Fecha.entityManager;
    
    public static final List<String> Fecha.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "torneo", "inicio", "fin");
    
    public static final EntityManager Fecha.entityManager() {
        EntityManager em = new Fecha().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Fecha.countFechas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Fecha o", Long.class).getSingleResult();
    }
    
    public static List<Fecha> Fecha.findAllFechas() {
        return entityManager().createQuery("SELECT o FROM Fecha o", Fecha.class).getResultList();
    }
    
    public static List<Fecha> Fecha.findAllFechas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Fecha o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Fecha.class).getResultList();
    }
    
    public static Fecha Fecha.findFecha(Long id) {
        if (id == null) return null;
        return entityManager().find(Fecha.class, id);
    }
    
    public static List<Fecha> Fecha.findFechaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Fecha o", Fecha.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Fecha> Fecha.findFechaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Fecha o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Fecha.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Fecha.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Fecha.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Fecha attached = Fecha.findFecha(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Fecha.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Fecha.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Fecha Fecha.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Fecha merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}