package com.skilldistillery.firearmsinventory.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.firearmsinventory.entities.Firearm;

@Service
@Transactional
public class FirearmsDaoImpl implements FirearmsDao {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Firearm findById(int id) {
        return em.find(Firearm.class, id);
    }

    @Override
    public List<Firearm> findAll() {
        String jpql = "SELECT f FROM Firearm f";
        return em.createQuery(jpql, Firearm.class).getResultList();
    }

    @Override
    public Firearm create(Firearm firearm) {
        em.persist(firearm);
        return firearm;
    }

    @Override
    public Firearm update(int id, Firearm firearm) {
        Firearm updatedFirearm = em.find(Firearm.class, id);
        if (updatedFirearm != null) {
            updatedFirearm.setSerialNumber(firearm.getSerialNumber());
            updatedFirearm.setManufacturer(firearm.getManufacturer());
            updatedFirearm.setModel(firearm.getModel());
            updatedFirearm.setCaliber(firearm.getCaliber());
            updatedFirearm.setValue(firearm.getValue());
        }
        return updatedFirearm;
    }
@Override
    public boolean deleteById(int id) {
        Firearm firearm = em.find(Firearm.class, id);
        if (firearm != null) {
            em.remove(firearm);
            return true;
        }
        return false;
    }
}
