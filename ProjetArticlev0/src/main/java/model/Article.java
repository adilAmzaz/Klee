package model;

import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Article {
	
	@Id
	private int id;
	private String nom;
	
	@ManyToOne
	private Auteur Auteur;
	
	private LocalDate parut;
	private String categorie;
	private String editeur;
	private double prix;
	
	public Article()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Auteur getAuteur() {
		return Auteur;
	}

	public void setAuteur(Auteur auteur) {
		Auteur = auteur;
	}

	public LocalDate getParut() {
		return parut;
	}

	public void setParut(LocalDate parut) {
		this.parut = parut;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public String getEditeur() {
		return editeur;
	}

	public void setEditeur(String editeur) {
		this.editeur = editeur;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	@Override
	public String toString() {
		return "Article [getId()=" + getId() + ", getNom()=" + getNom() + ", getAuteur()=" + getAuteur()
				+ ", getParut()=" + getParut() + ", getCategorie()=" + getCategorie() + ", getEditeur()=" + getEditeur()
				+ ", getPrix()=" + getPrix() + "]";
	}

	public Article(int id, String nom, model.Auteur auteur, LocalDate parut, String categorie, String editeur,
			double prix) {
		super();
		this.id = id;
		this.nom = nom;
		Auteur = auteur;
		this.parut = parut;
		this.categorie = categorie;
		this.editeur = editeur;
		this.prix = prix;
	}

	


	
}
