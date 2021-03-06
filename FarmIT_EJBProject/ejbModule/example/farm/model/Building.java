package example.farm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import java.io.Serializable;
import java.util.*;

@Entity
@Table(name = "Buildings")
public class Building implements Serializable {

	private String idBuilding;
	private Set<Box> boxes;

	@Id
	@Column(name = "IdBuilding")
	public String getIdBuilding() {
		return idBuilding;
	}

	public void setIdBuilding(String idBuilding) {
		this.idBuilding = idBuilding;
	}

	@OneToMany(mappedBy = "building", fetch = FetchType.EAGER)
	public Set<Box> getBoxes() {
		return boxes;
	}

	public void setBoxes(Set<Box> boxes) {
		this.boxes = boxes;
	}
}
