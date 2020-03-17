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

	public double getPrixPanier() {
		double total = 0;
		for (Ligne ligne : lignes) {
			total += ligne.getPrixLigne();
		}
		return total;
	}
}
