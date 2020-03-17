package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Ligne {

	@ManyToOne
	private Article a;
	
	
	private int qte;
	
	@ManyToOne
	private Utilisateur utilisateur;

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
	

	public Ligne(Article a, int qte) {
		super();
		this.a = a;
		this.qte = qte;
	}
	@Override
	public String toString() {
		return "Ligne [getA()=" + getA() + ", getQte()=" + getQte() + "]";
	}
	public Article getA() {
		return a;
	}
	public void setA(Article a) {
		this.a = a;
	}
	public int getQte() {
		return qte;
	}
	public void setQte(int qte) {
		this.qte = qte;
	}
	
	public Utilisateur getUtilisateur() {
		return utilisateur;
	}
	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}
	public double getPrixLigne()
	{
		return a.getPrix() * qte;
	}
	
}
