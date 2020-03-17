package model;

import java.util.ArrayList;
import java.util.List;

public class Panier {

	private ArrayList<Ligne> lignes = new ArrayList<Ligne>();

	public Panier()
	{
		
	}
	
	public ArrayList<Ligne> getLignes() {
		return lignes;
	}

	public void setLignes(ArrayList<Ligne> lignes) {
		this.lignes = lignes;
	}

	public void AjouterLigne(Ligne l)
	{
		boolean trouv = false;
		for (Ligne ligne : lignes) {
			System.out.println(ligne);
			System.out.println(l);
			if(ligne.getA().getNom().equals(l.getA().getNom()))
			{
				ligne.setQte(ligne.getQte()+l.getQte());
				trouv = true;
			}
		}
		if(!trouv)
		{
			this.lignes.add(l);
		}
	}
	
	public double getPrixPanier() {
		double total = 0;
		for (Ligne ligne : lignes) {
			total += ligne.getPrixLigne();
		}
		return total;
	}
}
