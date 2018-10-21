package com.skilldistillery.monopoly.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.monopoly.entities.Land;

@Transactional
@Repository
public class LandDAOImpl implements LandDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Land getLandById(int id) {
		Land landById = em.find(Land.class, id);
		return landById;
	}

	@Override
	public List<Land> getAllLands() {
		String query = "SELECT land FROM Land land";
		List<Land> resultList = em.createQuery(query, Land.class).getResultList();
		return resultList;
	}

	@Override
	public List<Object[]> getLandByNameColorStatus() {
		
		String query = "SELECT land.name, land.color, land.status " 
						+ "FROM Land land " 
						+ "WHERE land.color = 'BROWN' "
						+ "AND land.status = 'NOT_OWNED'";
		List<Object[]> resultList = em.createQuery(query, Object[].class).getResultList();
		
		return resultList;
	}

	@Override
	public Land create(Land land) {
		System.out.println(land);
		em.persist(land);
		em.flush();
		if (land.getId() == 0) {
			em.getTransaction().rollback();
		}
		return land;
	}

	@Override
	public Land update(int id, Land land) {
		Land changeProperty = em.find(Land.class, id);

		if (changeProperty != null) {
			changeProperty.setName(land.getName());
			changeProperty.setColor(land.getColor());
			changeProperty.setType(land.getType());
			changeProperty.setPurchasePrice(land.getPurchasePrice());
			changeProperty.setRentPrice(land.getRentPrice());
			changeProperty.setPosition(land.getPosition());
			changeProperty.setNumberOfHouses(land.getNumberOfHouses());
			changeProperty.setNumberOfHotels(land.getNumberOfHotels());
			changeProperty.setStatus(land.getStatus());
			changeProperty.setDescription(land.getDescription());
		}
		return changeProperty;
	}

	@Override
	public boolean delete(int id) {
		boolean destroyed;
		Land toDestroy = em.find(Land.class, id);
		em.remove(toDestroy);
		if (em.contains(toDestroy)) {
			destroyed = false;
			em.getTransaction().rollback();
		} else {
			destroyed = true;
		}
		return destroyed;
	}
}
