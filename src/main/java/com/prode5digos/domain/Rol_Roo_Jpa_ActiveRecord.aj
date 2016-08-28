// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prode5digos.domain;

import com.prode5digos.domain.Rol;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Rol_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Rol.entityManager;
    
    public static final List<String> Rol.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre");
    
    public static final EntityManager Rol.entityManager() {
        EntityManager em = new Rol().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Rol.countRols() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Rol o", Long.class).getSingleResult();
    }
    
    public static List<Rol> Rol.findAllRols() {
        return entityManager().createQuery("SELECT o FROM Rol o", Rol.class).getResultList();
    }
    
    public static List<Rol> Rol.findAllRols(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Rol o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Rol.class).getResultList();
    }
    
    public static Rol Rol.findRol(Long id) {
        if (id == null) return null;
        return entityManager().find(Rol.class, id);
    }
    
    public static List<Rol> Rol.findRolEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Rol o", Rol.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Rol> Rol.findRolEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Rol o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Rol.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Rol.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Rol.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Rol attached = Rol.findRol(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Rol.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Rol.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Rol Rol.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Rol merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
