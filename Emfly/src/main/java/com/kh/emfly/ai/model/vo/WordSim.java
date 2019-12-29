package com.kh.emfly.ai.model.vo;

public class WordSim implements java.io.Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5229397808454316561L;
	
	private int distance;
	private double ETRI;
	private double LAC;
	private double HAS;
	private double Pat;
	private double PEA;
	
	public WordSim() {
		
	}


	public WordSim(int distance, double eTRI, double lAC, double hAS, double pat, double pEA) {
		super();
		this.distance = distance;
		ETRI = eTRI;
		LAC = lAC;
		HAS = hAS;
		Pat = pat;
		PEA = pEA;
	}

	

	public int getDistance() {
		return distance;
	}


	public void setDistance(int distance) {
		this.distance = distance;
	}


	public double getETRI() {
		return ETRI;
	}


	public void setETRI(double eTRI) {
		ETRI = eTRI;
	}


	public double getLAC() {
		return LAC;
	}


	public void setLAC(double lAC) {
		LAC = lAC;
	}


	public double getHAS() {
		return HAS;
	}


	public void setHAS(double hAS) {
		HAS = hAS;
	}


	public double getPat() {
		return Pat;
	}


	public void setPat(double pat) {
		Pat = pat;
	}


	public double getPEA() {
		return PEA;
	}


	public void setPEA(double pEA) {
		PEA = pEA;
	}


	@Override
	public String toString() {
		return "WordSim [distance=" + distance + ", ETRI=" + ETRI + ", LAC=" + LAC + ", HAS=" + HAS + ", Pat=" + Pat
				+ ", PEA=" + PEA + "]";
	}
	
	

}
