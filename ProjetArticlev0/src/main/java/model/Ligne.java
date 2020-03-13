package model;

public class Ligne {

	private Article a;
	private int qte;
	
	
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
	
}
