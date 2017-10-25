package domain;

public class Author extends Person {
	private Integer birthYear;
	private Integer deathYear;

	public Integer getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(Integer birthYear) {
		this.birthYear = birthYear;
	}

	public Integer getDeathYear() {
		return deathYear;
	}

	public void setDeathYear(Integer deathYear) {
		this.deathYear = deathYear;
	}
}
