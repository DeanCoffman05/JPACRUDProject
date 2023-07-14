package com.skilldistillery.firearmsinventory.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class FirearmTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Firearm firearmsInv;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFirearmInventory");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		firearmsInv = em.find(Firearm.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		firearmsInv = null; 
	}

	@Test
	void test() {
		assertNotNull(firearmsInv);
	}
	
	@Test
	void test_firearmsInv_entity_mapping() {
		assertNotNull(firearmsInv);
		assertEquals("1a23", firearmsInv.getSerialNumber());
	}

}
