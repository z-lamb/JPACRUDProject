package com.skilldistillery.monopoly.data;

import java.util.List;

import com.skilldistillery.monopoly.entities.Land;
import com.skilldistillery.monopoly.entities.LandColor;
import com.skilldistillery.monopoly.entities.LandStatus;

public interface LandDAO {

	Land create(Land land);

	Land update(int id, Land land);

	boolean delete(int id);

	Land getLandById(int id);

	List<Land> getAllLands();

	List<Object[]> getLandByNameColorStatus(LandColor color, LandStatus status);
}
