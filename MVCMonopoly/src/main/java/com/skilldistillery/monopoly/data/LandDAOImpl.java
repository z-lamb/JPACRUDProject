package com.skilldistillery.monopoly.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class LandDAOImpl implements LandDAO {

	@PersistenceContext
	private EntityManager em;
}
