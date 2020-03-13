package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Auteur {
	
	@Id
	private int id;

	@OneToMany
	private List<Article> livres;
	
	private String Nom;
	private String prenom;
	private LocalDate DateN;
	
	public Auteur()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Article> getLivres() {
		return livres;
	}

	public void setLivres(List<Article> livres) {
		this.livres = livres;
	}

	public String getNom() {
		return Nom;
	}

	public void setNom(String nom) {
		Nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public LocalDate getDateN() {
		return DateN;
	}

	public void setDateN(LocalDate dateN) {
		DateN = dateN;
	}

	@Override
	public String toString() {
		return "Auteur [getId()=" + getId() + ", getLivres()=" + getLivres() + ", getNom()=" + getNom()
				+ ", getPrenom()=" + getPrenom() + ", getDateN()=" + getDateN() + "]";
	}

	public Auteur(int id, String nom, String prenom, LocalDate dateN) {
		super();
		this.id = id;
		Nom = nom;
		this.prenom = prenom;
		DateN = dateN;
	}
	

}
