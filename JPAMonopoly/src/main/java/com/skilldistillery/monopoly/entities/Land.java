package com.skilldistillery.monopoly.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Land {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Enumerated(EnumType.STRING)
	private LandColor color;
	@Enumerated(EnumType.STRING)
	private LandType type;
	@Column(name="purchase_price")
	private Integer purchasePrice;
	@Column(name="rent_price")
	private Integer rentPrice;
	private int position;
	@Column(name="number_of_houses")
	private Integer numberOfHouses;
	@Column(name="number_of_hotels")
	private Integer numberOfHotels;
	@Enumerated(EnumType.STRING)
	private LandStatus status;
	private String description;
	
	/*
	 * getters / setters
	 */
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LandColor getColor() {
		return color;
	}
	public void setColor(LandColor color) {
		this.color = color;
	}
	public LandType getType() {
		return type;
	}
	public void setType(LandType type) {
		this.type = type;
	}
	public Integer getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(Integer purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public Integer getRentPrice() {
		return rentPrice;
	}
	public void setRentPrice(Integer rentPrice) {
		this.rentPrice = rentPrice;
	}
	public int getPosition() {
		return position;
	}
	public void setPosition(int position) {
		this.position = position;
	}
	public Integer getNumberOfHouses() {
		return numberOfHouses;
	}
	public void setNumberOfHouses(Integer numberOfHouses) {
		this.numberOfHouses = numberOfHouses;
	}
	public Integer getNumberOfHotels() {
		return numberOfHotels;
	}
	public void setNumberOfHotels(Integer numberOfHotels) {
		this.numberOfHotels = numberOfHotels;
	}
	public LandStatus getStatus() {
		return status;
	}
	public void setStatus(LandStatus status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((numberOfHotels == null) ? 0 : numberOfHotels.hashCode());
		result = prime * result + ((numberOfHouses == null) ? 0 : numberOfHouses.hashCode());
		result = prime * result + position;
		result = prime * result + ((purchasePrice == null) ? 0 : purchasePrice.hashCode());
		result = prime * result + ((rentPrice == null) ? 0 : rentPrice.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Land other = (Land) obj;
		if (color != other.color)
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (numberOfHotels == null) {
			if (other.numberOfHotels != null)
				return false;
		} else if (!numberOfHotels.equals(other.numberOfHotels))
			return false;
		if (numberOfHouses == null) {
			if (other.numberOfHouses != null)
				return false;
		} else if (!numberOfHouses.equals(other.numberOfHouses))
			return false;
		if (position != other.position)
			return false;
		if (purchasePrice == null) {
			if (other.purchasePrice != null)
				return false;
		} else if (!purchasePrice.equals(other.purchasePrice))
			return false;
		if (rentPrice == null) {
			if (other.rentPrice != null)
				return false;
		} else if (!rentPrice.equals(other.rentPrice))
			return false;
		if (status != other.status)
			return false;
		if (type != other.type)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Land [id=" + id + ", name=" + name + ", color=" + color + ", type=" + type + ", purchasePrice="
				+ purchasePrice + ", rentPrice=" + rentPrice + ", position=" + position + ", numberOfHouses="
				+ numberOfHouses + ", numberOfHotels=" + numberOfHotels + ", status=" + status + ", description="
				+ description + "]";
	}
	
	public Land() {
		super();
	}

	public Land(int id, String name, LandColor color, LandType type, Integer purchasePrice, Integer rentPrice,
			int position, Integer numberOfHouses, Integer numberOfHotels, LandStatus status, String description) {
		super();
		this.id = id;
		this.name = name;
		this.color = color;
		this.type = type;
		this.purchasePrice = purchasePrice;
		this.rentPrice = rentPrice;
		this.position = position;
		this.numberOfHouses = numberOfHouses;
		this.numberOfHotels = numberOfHotels;
		this.status = status;
		this.description = description;
	}
}
