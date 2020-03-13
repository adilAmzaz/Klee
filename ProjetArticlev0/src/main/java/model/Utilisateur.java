package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Utilisateur {

	private int id;
	private String pseudo;
	private String nom;
	private String prenom;
	private String mdp;
	private String mail;
	private String tel;
	private String Adresse;
	
	public Utilisateur()
	{
		
	}
	
	
	public Utilisateur(int id, String pseudo, String nom, String prenom, String mdp, String mail, String tel,
			String adresse) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.nom = nom;
		this.prenom = prenom;
		this.mdp = mdp;
		this.mail = mail;
		this.tel = tel;
		Adresse = adresse;
	}


	@Override
	public String toString() {
		return "Utilisateur [getId()=" + getId() + ", getPseudo()=" + getPseudo() + ", getNom()=" + getNom()
				+ ", getPrenom()=" + getPrenom() + ", getMdp()=" + getMdp() + ", getMail()=" + getMail() + ", getTel()="
				+ getTel() + ", getAdresse()=" + getAdresse() + "]";
	}

	@Id
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAdresse() {
		return Adresse;
	}
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}
}
