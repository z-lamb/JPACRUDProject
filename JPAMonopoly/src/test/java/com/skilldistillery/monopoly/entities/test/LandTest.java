package com.skilldistillery.monopoly.entities.test;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.monopoly.entities.Land;
import com.skilldistillery.monopoly.entities.LandColor;
import com.skilldistillery.monopoly.entities.LandStatus;
import com.skilldistillery.monopoly.entities.LandType;

class LandTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Land land;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MonopolyDB");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		land = em.find(Land.class, 2);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	@DisplayName("Test Land mappings")
	void test_land_mappings() {
		assertNotNull(land);
		assertEquals("Mediteranean Avenue", land.getName());
		assertEquals(LandColor.BROWN, land.getColor());
		assertEquals(LandType.PROPERTY, land.getType());
		assertEquals(60, (int)land.getPurchasePrice());
		assertEquals(2, (int)land.getRentPrice());
		assertEquals(2, (int)land.getPosition());
		assertEquals(0, (int)land.getNumberOfHouses());
		assertEquals(0, (int)land.getNumberOfHotels());
		assertEquals(LandStatus.NOT_OWNED, land.getStatus());
		assertEquals("First Property", land.getDescription());
		
	}

}
