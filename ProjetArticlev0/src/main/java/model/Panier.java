package model;

import java.util.ArrayList;

public class Panier {
	private ArrayList<Ligne> lignes = new ArrayList<Ligne>();

	public ArrayList<Ligne> getLignes() {
		return lignes;
	}

	public void setLignes(ArrayList<Ligne> lignes) {
		this.lignes = lignes;
	}
}
