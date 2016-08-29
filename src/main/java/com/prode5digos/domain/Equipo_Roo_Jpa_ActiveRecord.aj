// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prode5digos.domain;

import com.prode5digos.domain.Equipo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Equipo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Equipo.entityManager;
    
    public static final List<String> Equipo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "escudo");
    
    public static final EntityManager Equipo.entityManager() {
        EntityManager em = new Equipo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Equipo.countEquipoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Equipo o", Long.class).getSingleResult();
    }
    
    public static List<Equipo> Equipo.findAllEquipoes() {
        return entityManager().createQuery("SELECT o FROM Equipo o", Equipo.class).getResultList();
    }
    
    public static List<Equipo> Equipo.findAllEquipoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Equipo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Equipo.class).getResultList();
    }
    
    public static Equipo Equipo.findEquipo(Long id) {
        if (id == null) return null;
        return entityManager().find(Equipo.class, id);
    }
    
    public static List<Equipo> Equipo.findEquipoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Equipo o", Equipo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Equipo> Equipo.findEquipoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Equipo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Equipo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Equipo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Equipo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Equipo attached = Equipo.findEquipo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Equipo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Equipo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Equipo Equipo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Equipo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
